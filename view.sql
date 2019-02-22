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

CREATE VIEW DoctorsLoad AS
SELECT doc.id AS doctorID, doc.gender AS gender, 'Overload' AS load
FROM Doctor doc, (
    SELECT E.docID AS doctorID, COUNT(E.admissionID) AS numAdmission
    FROM (
    SELECT DISTINCT exam.admission_id AS admissionID, exam.doctor_id AS docID
    FROM Examination exam
    ) E
    GROUP BY E.docID
) exam1
WHERE doc.id = exam1.doctorID
AND exam1.numAdmission > 10
UNION
SELECT doc.id AS doctorID, doc.gender AS gender, 'Underload' AS load
FROM Doctor doc, (
    SELECT E.docID AS doctorID, COUNT(E.admissionID) AS numAdmission
    FROM (
    SELECT DISTINCT exam.admission_id AS admissionID, exam.doctor_id AS docID
    FROM Examination exam
    ) E
    GROUP BY E.docID
) exam1
WHERE doc.id = exam1.doctorID
AND exam1.numAdmission <= 10;

-- Use the views created above to report the critical-case patients with number of admissions
-- to ICU greater than 4
SELECT p.ssn, p.address, p.tel_number, p.first_name, p.last_name
FROM CriticalCases cc, Patient p
WHERE cc.Patient_SSN = p.ssn
AND cc.numberOfAdmissionToICU > 4;

--
SELECT doc.id, doc.specialty, doc.gender, doc.first_name, doc.last_name
FROM Doctor doc, DoctorsLoad dl
WHERE doc.id = dl.doctorID
AND dl.load = 'Overload'
AND dl.gender = 'Female';

--
SELECT DISTINCT dl.doctorID, cc.Patient_SSN, exam.comments
FROM CriticalCases cc, DoctorsLoad dl, AdmittedPatients ap, Examination exam
WHERE dl.doctorID = exam.doctor_id
AND ap.admission_id = exam.admission_id
AND cc.Patient_SSN = ap.patient_ssn
AND dl.load = 'Underload';