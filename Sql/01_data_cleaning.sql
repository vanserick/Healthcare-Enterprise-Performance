-- Create Staging Table to safeguard source data
CREATE TABLE staging_healthcare AS 
SELECT * FROM raw_healthcare;

-- 1. Count Records
SELECT COUNT(*) AS total_raw_records FROM staging_healthcare;

-- 2. Identify & Remove Duplicate Rows (Keeping the first occurrence)
WITH CTE_Duplicates AS (
    SELECT *,
           ROW_NUMBER() OVER(PARTITION BY Name, Age, Gender, "Date of Admission", Hospital ORDER BY "Date of Admission") as row_num
    FROM staging_healthcare
)
DELETE FROM staging_healthcare
WHERE row_id IN (SELECT row_id FROM CTE_Duplicates WHERE row_num > 1);

-- 3. Check for NULL values across key attributes
SELECT 
    SUM(CASE WHEN Name IS NULL THEN 1 ELSE 0 END) AS null_names,
    SUM(CASE WHEN Age IS NULL THEN 1 ELSE 0 END) AS null_ages,
    SUM(CASE WHEN "Billing Amount" IS NULL THEN 1 ELSE 0 END) AS null_billing
FROM staging_healthcare;

-- 4. Standardize text values and trim trailing/unnecessary whitespaces
UPDATE staging_healthcare
SET 
    Name = UPPER(TRIM(REGEXP_REPLACE(Name, '\s+', ' ', 'g'))),
    "Medical Condition" = INITCAP(TRIM("Medical Condition")),
    "Insurance Provider" = INITCAP(TRIM("Insurance Provider")),
    "Admission Type" = INITCAP(TRIM("Admission Type")),
    "Test Results" = INITCAP(TRIM("Test Results")),
    Gender = INITCAP(TRIM(Gender));

-- 5. Correct and verify Date Formats & Outlier Billing Amounts
UPDATE staging_healthcare
SET "Billing Amount" = 0 WHERE "Billing Amount" < 0; -- Handle negative anomalies