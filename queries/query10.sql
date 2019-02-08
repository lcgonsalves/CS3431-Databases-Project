-- Q10: Report the date of the coming future visit for patient with SSN = 111-22-3333.
-- Note: This date should exist in the last (most recent) visit of that patient.
SELECT future_visit_date
FROM (SELECT id, max(check_in)
	  FROM Admission
	  WHERE patient = "111-22-3333"
	  GROUP BY id) as R1,
	 Admission
WHERE Admission.id = R1.id;