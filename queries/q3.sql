-- Q3: For each patient, report the sum of amounts paid by the insurance company for
-- that patient, i.e., report the patients SSN, and the sum of insurance payments over all
-- visits.
-- #### --
-- Note: If you keep the insurance coverage as a percentage, then compute this
-- percentage before getting the sum.
SELECT patient as SSN, sum(Admission.cost * Admission.insurance_coverage)
FROM Admission
GROUP BY patient;
