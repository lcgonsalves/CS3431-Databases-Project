-- Q8: For patients who have a scheduled future visit (which is part of their most recent
-- visit), report that patient (SSN, and first and last names) and the visit date. Do not
-- report patients who do not have scheduled visit.
SELECT ssn, first_name, last_name, future_visit_date
FROM (SELECT patient, future_visit_date
	  FROM ( SELECT patient, id, max(check_in)
	  	  		  FROM Admission
	  	          GROUP BY patient, id)  -- select only most recent admission
	  WHERE future_visit_date IS NOT NULL) R1,
	  Patient P
WHERE P.ssn in R1.patient;