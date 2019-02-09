-- Q11: For patient with SSN = 111-22-3333, report the doctors (only ID) who have
-- examined this patient more than 2 times.

SELECT doctor_id, count(*) as count
FROM (SELECT id FROM Admission WHERE patient = '111-22-3333') R1,
	 (SELECT doctor_id, admission_id as id FROM Examination ) R2
WHERE R1.id = R2.id
GROUP BY doctor_id
HAVING count(*) > 2;
