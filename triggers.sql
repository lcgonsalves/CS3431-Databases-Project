CREATE OR REPLACE TRIGGER AddComment
  AFTER INSERT ON Examination
  FOR EACH ROW
  WHEN (new.service = 'ICU')
  BEGIN
    IF (:new.comments IS NULL) THEN
    RAISE_APPLICATION_ERROR(-20004, 'You must leave a comment.');
  END IF;

END;
/

-- Should be placed after tables are made and before inserts
CREATE OR REPLACE TRIGGER CalculateInsurance
  AFTER INSERT OR UPDATE ON Admission
  FOR EACH ROW
  BEGIN

    :new.insurance_coverage = 0.65;
    :new.insurance_cost = :new.cost * :new.insurance_coverage;

END;
/

CREATE OR REPLACE TRIGGER EmergencyFutureDate
  AFTER INSERT ON Admission
  DECLARE admissionType varchar2(100);

  BEGIN

  SELECT exam.service INTO admissionType
  FROM Examination exam
  WHERE exam.admission_id = :new.id;

  IF (admissionType = 'ICU' OR admissionType = 'Stitching') THEN
    UPDATE Admission SET future_visit_date = ADD_Months(sysdate, 2) WHERE id = :new.id;
    --:new.future_visit_date = ADD_MONTHS(:new.check_in, 2);
    --RAISE_APPLICATION_ERROR(-20004, 'You must leave a comment.');
  END IF;

END;
/
