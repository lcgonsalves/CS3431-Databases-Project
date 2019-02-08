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
