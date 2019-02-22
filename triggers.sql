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

--
CREATE OR REPLACE TRIGGER CalculateInsurance
  AFTER INSERT OR UPDATE ON Admission
  FOR EACH ROW
  BEGIN



END;
/

