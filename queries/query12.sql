-- Q12: Report the equipment types (only the ID) for which the hospital has purchased
-- equipments (units) in both 2010 and 2011. Do not report duplication.

SELECT type_id
FROM Equipment
WHERE year_of_purchase = 2010 OR year_of_purchase = 2011
GROUP BY type_id;

-- SELECT type_id
-- FROM ( SELECT type_id FROM Equipment WHERE year_of_purchase = 2010 )
-- WHERE year_of_purchase = 2011;
