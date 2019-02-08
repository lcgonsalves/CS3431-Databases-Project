-- Q6: Report the employee who has access to the largest number of rooms. We need the
-- employee ID, and the number of rooms (s)he can access.
SELECT employee_id, max(CNT) as room_count
FROM ( SELECT employee_id, count(room_id) as CNT
	   FROM Permissions
	   GROUP BY employee_id	)
GROUP BY employee_id;
