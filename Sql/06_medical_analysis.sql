-- Most Common Conditions & Medication Usage
SELECT "Medical Condition", Medication, COUNT(*) as treatment_count 
FROM staging_healthcare GROUP BY "Medical Condition", Medication ORDER BY treatment_count DESC;

-- Condition by Age Group
SELECT age_group, "Medical Condition", COUNT(*) as case_count
FROM staging_healthcare GROUP BY age_group, "Medical Condition" ORDER BY age_group, case_count DESC;