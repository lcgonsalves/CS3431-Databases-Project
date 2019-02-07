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