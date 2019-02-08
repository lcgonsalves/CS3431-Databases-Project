-- Q9: For each equipment type that has more than 3 units, report the equipment type ID,
-- model, and the number of units this type has.
SELECT type_id, model, num_units
FROM Type
WHERE num_units > 3;
