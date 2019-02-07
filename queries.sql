-- 			CS3431 QUERIES FILE        --
-- By Léo Gonsalves & Alexander Antaya --

-- Q1: Report the hospital rooms (the room number) that are currently occupied.
SELECT room_num 
FROM Room 
WHERE is_occupied = true;



-- Q2: For a given division manager (say, ID = 10), report all regular employees that are
-- supervised by this manager. Display the employees ID, names, and salary.
SELECT id, first_name, last_name, salary
FROM Employee AS E
WHERE E.id in 
	( SELECT R.employee_id AS id
	  FROM Regular AS R, DivisionalManager AS D
	  WHERE R.divisional_manager_id = D.employee_id );

	-- subquery should only have 1 column: id (which comes from Regular.employee_id) --



-- Q3: For each patient, report the sum of amounts paid by the insurance company for
-- that patient, i.e., report the patients SSN, and the sum of insurance payments over all
-- visits.
-- #### --
-- Note: If you keep the insurance coverage as a percentage, then compute this
-- percentage before getting the sum.
SELECT patient as SSN, sum(Admission.cost * Admission.insurance_coverage)
FROM Admission
GROUP BY patient;



-- Q4: Report the number of visits done for each patient, i.e., for each patient, 
-- report the patient SSN, first and last names, and the count of 
-- visits done by this patient.
SELECT ssn, first_name, last_name, num_visits
FROM Patient as P,
	 ( SELECT patient, count(*) as num_visits -- count all visits --
	   FROM Admission
	   GROUP BY patient) as A
WHERE A.patient = P.ssn;


-- Q5: Report the room number that has an equipment unit with serial number ‘A01-02X’.
SELECT room_num
FROM Equipment
WHERE Equipment.serial_num = 'A01-02X';

