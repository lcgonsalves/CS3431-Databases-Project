-- Q8: For patients who have a scheduled future visit (which is part of their most recent
-- visit), report that patient (SSN, and first and last names) and the visit date. Do not
-- report patients who do not have scheduled visit.
SELECT R1.ssn, first_name, last_name, max(future_visit_date)
FROM 	(SELECT patient as ssn, future_visit_date
	 	 FROM Admission
	     WHERE future_visit_date IS NOT NULL ) R1,
		 Patient P
WHERE R1.ssn IN P.ssn
GROUP BY R1.ssn, first_name, last_name;