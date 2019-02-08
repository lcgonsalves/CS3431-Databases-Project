-- Q6: Report the employee who has access to the largest number of rooms. We need the
-- employee ID, and the number of rooms (s)he can access.
SELECT employee_id, count(room_id) AS CNT
FROM Permissions
GROUP BY employee_id
HAVING CNT = MAX(CNT);
