-- Patients by Gender
SELECT Gender, COUNT(*) as patient_count FROM staging_healthcare GROUP BY Gender;

-- Patients by Age Group
SELECT age_group, COUNT(*) as patient_count FROM staging_healthcare GROUP BY age_group ORDER BY age_group;

-- Patients by Blood Type
SELECT "Blood Type", COUNT(*) as patient_count FROM staging_healthcare GROUP BY "Blood Type" ORDER BY patient_count DESC;

-- Patients by Medical Condition
SELECT "Medical Condition", COUNT(*) as patient_count FROM staging_healthcare GROUP BY "Medical Condition" ORDER BY patient_count DESC;

-- Patients by Admission Type
SELECT "Admission Type", COUNT(*) as patient_count FROM staging_healthcare GROUP BY "Admission Type";