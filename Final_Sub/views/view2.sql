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
