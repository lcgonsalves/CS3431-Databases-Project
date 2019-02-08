-- Q2: For a given division manager (say, ID = 10), report all regular employees that are
-- supervised by this manager. Display the employees ID, names, and salary.
SELECT id, first_name, last_name, salary
FROM Employee 
WHERE Employee.id in
	( SELECT R.employee_id AS id
	  FROM Regular, DivisionalManager
	  WHERE Regular.divisional_manager_id = DivisionalManager.employee_id );

	-- subquery should only have 1 column: id (which comes from Regular.employee_id) --
