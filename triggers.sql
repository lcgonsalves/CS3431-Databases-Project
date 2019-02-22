CREATE OR REPLACE TRIGGER AddComment
  AFTER INSERT
  ON Examination
  FOR EACH ROW
  WHEN (new.service = 'ICU')
  BEGIN
    IF (:new.comments IS NULL)
    THEN
      RAISE_APPLICATION_ERROR(-20004, 'You must leave a comment.');
    END IF;

  END;
/

-- Should be placed after tables are made and before inserts
CREATE OR REPLACE TRIGGER CalculateInsurance
  AFTER INSERT OR UPDATE
  ON Admission
  FOR EACH ROW
  BEGIN

    :new.insurance_coverage := 0.65;
    :new.insurance_cost := :new.cost * :new.insurance_coverage;

  END;
/

-- This trigger will never actually be fired due to the structure of
-- the database schema. Each Regular employee must have a Divisional Manager
-- ID associated with it and this column must not be null
CREATE OR REPLACE TRIGGER CheckRegularEmployee
  BEFORE INSERT
  ON Regular
  FOR EACH ROW
  DECLARE DivManager NUMBER(20);
  BEGIN

    IF (:new.divisional_manager_id != NULL)
    THEN

      SELECT DISTINCT dm.dm_id
      INTO DivManager
      FROM DivisionalManager dm
      WHERE :new.divisional_manager_id = dm.dm_id;

      IF (DivManager = NULL)
      THEN
        RAISE_APPLICATION_ERROR(-20004, 'A Regular Employee must have a Divisional Manager.');
      END IF;
    END IF;

    IF (:new.divisional_manager_id = NULL)
    THEN
      RAISE_APPLICATION_ERROR(-20004, 'A Regular Employee must have a Divisional Manager.');
    END IF;

  END;
/

-- This trigger will never actually be fired due to the structure of
-- the database schema. Each Divisional Manager must have a General Manager
-- ID associated with it and this column must not be null
CREATE OR REPLACE TRIGGER CheckDivManagerEmployee
  BEFORE INSERT
  ON DivisionalManager
  FOR EACH ROW
  DECLARE GenManager NUMBER(20);
  BEGIN

    IF (:new.general_manager_id != NULL)
    THEN

      SELECT DISTINCT gm.gm_id
      INTO GenManager
      FROM GeneralManager gm
      WHERE :new.general_manager_id = gm.gm_id;

      IF (GenManager = NULL)
      THEN
        RAISE_APPLICATION_ERROR(-20004, 'A Divisional Manager must have a General Manager.');
      END IF;
    END IF;

    IF (:new.general_manager_id = NULL)
    THEN
      RAISE_APPLICATION_ERROR(-20004, 'A Divisional Manager must have a General Manager.');
    END IF;
  END;
/

--
CREATE OR REPLACE TRIGGER EmergencyFutureDate
  BEFORE INSERT
  ON Examination
  FOR EACH ROW
  WHEN (new.service = 'ICU' OR new.service = 'Stitching')
  DECLARE checkedIn TIMESTAMP(0);
  BEGIN

    SELECT DISTINCT admiss.check_in
    INTO checkedIn
    FROM Admission admiss
    WHERE :new.admission_id = admiss.id;

    UPDATE Admission
    SET future_visit_date = ADD_Months(checkedIn, 2)
    WHERE id = :new.admission_id;

  END;
/

--
CREATE OR REPLACE TRIGGER CheckEquipment
BEFORE INSERT OR UPDATE ON Equipment
FOR EACH ROW
DECLARE EquipType varchar2(50);
BEGIN

SELECT ty.model INTO EquipType
FROM Type ty
WHERE :new.type_id = ty.type_id;

  IF (:new.year_of_purchase IS NULL) THEN
  RAISE_APPLICATION_ERROR(-20004, 'The purchase year cannot be null for this type of equpiment.');
  END IF;
  IF (:new.year_of_purchase IS NOT NULL) THEN
    IF (EquipType = 'CT Scanner' OR EquipType = 'Ultrasound') THEN
      IF (:new.year_of_purchase < 2006) THEN
        RAISE_APPLICATION_ERROR(-20004, 'The purchase year must be greater than 2006 for this type of equpiment.');
      END IF;
    END IF;
  END IF;

END;
/

set serveroutput on;
CREATE OR REPLACE TRIGGER PatientLeavesHospital
  AFTER UPDATE ON Admission
  FOR EACH ROW
  DECLARE
    CURSOR cur_list IS
      SELECT d.first_name, d.last_name, e.comments
      FROM Doctor d, Examination e
      WHERE e.doctor_id = d.id AND e.admission_id = :new.id;

    curChoice cur_list%ROWTYPE;
    fName varchar2(30);
    lName varchar2(30);
    address varchar2(50);

  BEGIN

  SELECT p.first_name, p.last_name, p.address
  INTO fName, lName, address
  FROM Patient p
  WHERE p.ssn = :new.patient;

  OPEN cur_list;
  LOOP
    FETCH cur_list INTO curChoice;
    EXIT WHEN cur_list%NOTFOUND;
    dbms_output.put_line(fName);
    dbms_output.put_line(lName);
    dbms_output.put_line(address);
    dbms_output.put_line(curChoice.first_name);
    dbms_output.put_line(curChoice.last_name);
    dbms_output.put_line(curChoice.comments);
  END LOOP;
  CLOSE cur_list;
END;
/