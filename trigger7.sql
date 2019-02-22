CREATE OR REPLACE TRIGGER PatientLeavesHospital
  AFTER UPDATE ON Admission
  DECLARE
    CURSOR cur_list IS
      SELECT d.first_name, d.last_name, e.comments
      FROM Doctor d, Examination e
      WHERE e.doctor_id = d.id AND e.admission_id = :NEW.id;

    curChoice cur_list%ROWTYPE;
    fName varchar2(30);
    lName varchar2(30);
    address varchar2(50);
  BEGIN

  SELECT p.first_name INTO fName, p.last_name INTO lName, p.address INTO address
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
