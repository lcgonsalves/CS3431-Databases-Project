-- 			CS3431 QUERIES FILE        --
-- By Léo Gonsalves & Alexander Antaya --

-- Q1: Report the hospital rooms (the room number) that are currently occupied.
SELECT room_num
FROM Room
WHERE is_occupied = 1;



-- Q2: For a given division manager (say, ID = 10), report all regular employees that are
-- supervised by this manager. Display the employees ID, names, and salary.

--Note to grader: We were not quite sure what the question was asking for so we
--	just hard coded a divisional manger (1) in.

SELECT id, first_name, last_name, salary
FROM Employee
WHERE Employee.id in
	( SELECT Regular.employee_id AS id
	  FROM Regular, DivisionalManager
	  WHERE Regular.divisional_manager_id = 1 );

	-- subquery should only have 1 column: id (which comes from Regular.employee_id) --



	-- Q3: For each patient, report the sum of amounts paid by the insurance company for
	-- that patient, i.e., report the patients SSN, and the sum of insurance payments over all
	-- visits.
	-- #### --
	-- Note: If you keep the insurance coverage as a percentage, then compute this
	-- percentage before getting the sum.
	SELECT patient as SSN, sum(Admission.cost * Admission.insurance_coverage) AS sum
	FROM Admission
	GROUP BY patient;



	-- Q4: Report the number of visits done for each patient, i.e., for each patient,
	-- report the patient SSN, first and last names, and the count of
	-- visits done by this patient.
	SELECT ssn, first_name, last_name, num_visits
	FROM Patient P,
		 ( SELECT patient, count(*) as num_visits -- count all visits --
		   FROM Admission
		   GROUP BY patient) A
	WHERE A.patient = P.ssn;



	-- Q5: Report the room number that has an equipment unit with serial number ‘A01-02X’.
	SELECT room_num
	FROM Equipment
	WHERE Equipment.serial_num = 'A01-02X';



	-- Q6: Report the employee who has access to the largest number of rooms. We need the
	-- employee ID, and the number of rooms (s)he can access.

	-- NOTE TO GRADER --
	-- this query can select only the max, but can't select its
	-- employee ID along with it. the previous query can't isolate
	-- only the maximum count.
	SELECT employee_id, max(CNT) as room_count
	FROM ( SELECT employee_id, count(room_id) as CNT
		   FROM Permissions
		   GROUP BY employee_id )
	GROUP BY employee_id;



	-- Q7: Report the number of regular employees, division managers, and general
	-- managers in the hospital.
	(
	  ( SELECT 'Regular Employees' as Type, count(*) as Count FROM Regular )
	  UNION
	  ( SELECT 'Divisional Managers' as Type, count(*) as Count FROM DivisionalManager )
	)
	UNION
	( SELECT 'General Managers' as Type, count(*) as Count FROM GeneralManager );



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



	-- Q9: For each equipment type that has more than 3 units, report the equipment type ID,
	-- model, and the number of units this type has.
	SELECT type_id, model, num_units
	FROM Type
	WHERE num_units > 3;



	-- Q10: Report the date of the coming future visit for patient with SSN = 111-22-3333.
	-- Note: This date should exist in the last (most recent) visit of that patient.
	SELECT max(future_visit_date) as future_visit_date
	FROM (SELECT id, max(check_in)
		  FROM Admission
		  WHERE patient = '111-22-3333'
		  GROUP BY id) R1,
		 Admission
	WHERE Admission.id in R1.id;



	-- Q11: For patient with SSN = 111-22-3333, report the doctors (only ID) who have
	-- examined this patient more than 2 times.

	SELECT doctor_id, count(*) as count
	FROM (SELECT id FROM Admission WHERE patient = '111-22-3333') R1,
		 (SELECT doctor_id, admission_id as id FROM Examination ) R2
	WHERE R1.id = R2.id
	GROUP BY doctor_id
	HAVING count(*) > 2;



	-- Q12: Report the equipment types (only the ID) for which the hospital has purchased
	-- equipments (units) in both 2010 and 2011. Do not report duplication.

	SELECT type_id
	FROM Equipment
	WHERE year_of_purchase = 2010 OR year_of_purchase = 2011
	GROUP BY type_id;

	
