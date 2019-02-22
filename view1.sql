
CREATE VIEW CriticalCases AS
SELECT p.ssn AS Patient_SSN, p.first_name, p.last_name, A.numberOfAdmissionToICU
FROM Patient p, (
  SELECT ap.patient_ssn SSN, COUNT(*) numberOfAdmissionToICU
FROM RoomServices rserv, RoomStay rstay, AdmittedPatients ap
WHERE rserv.room_num = rstay.room_num
AND rstay.admission_id = ap.admission_id
AND rserv.service = 'ICU'
GROUP BY ap.patient_ssn
  ) A
WHERE p.ssn = A.SSN;

-- Use the views created above to report the critical-case patients with number of admissions
-- to ICU greater than 4
SELECT p.ssn, p.address, p.tel_number, p.first_name, p.last_name
FROM CriticalCases cc, Patient p
WHERE cc.Patient_SSN = p.ssn
AND cc.numberOfAdmissionToICU > 4;