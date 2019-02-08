-- Q7: Report the number of regular employees, division managers, and general
-- managers in the hospital.
( 
  ( SELECT 'Regular Employees' as Type, count(*) as Count FROM Regular )
  UNION
  ( SELECT 'Divisional Managers' as Type, count(*) as Count FROM DivisionalManager )
)
UNION
( SELECT 'General Managers' as Type, count(*) as Count FROM GeneralManager );