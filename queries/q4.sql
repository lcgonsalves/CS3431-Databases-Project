-- Q4: Report the number of visits done for each patient, i.e., for each patient,
-- report the patient SSN, first and last names, and the count of
-- visits done by this patient.
SELECT ssn, first_name, last_name, num_visits
FROM Patient P,
	 ( SELECT patient, count(*) as num_visits -- count all visits --
	   FROM Admission
	   GROUP BY patient) A
WHERE A.patient = P.ssn;
