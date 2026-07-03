-- Alter table to introduce business analytical columns
ALTER TABLE staging_healthcare ADD COLUMN length_of_stay INT;
ALTER TABLE staging_healthcare ADD COLUMN age_group VARCHAR(15);
ALTER TABLE staging_healthcare ADD COLUMN billing_category VARCHAR(15);
ALTER TABLE staging_healthcare ADD COLUMN stay_category VARCHAR(15);
ALTER TABLE staging_healthcare ADD COLUMN admission_month INT;
ALTER TABLE staging_healthcare ADD COLUMN admission_quarter INT;
ALTER TABLE staging_healthcare ADD COLUMN admission_year INT;
ALTER TABLE staging_healthcare ADD COLUMN weekday_name VARCHAR(10);

-- Populate calculations
UPDATE staging_healthcare
SET 
    length_of_stay = "Discharge Date"::DATE - "Date of Admission"::DATE,
    admission_month = EXTRACT(MONTH FROM "Date of Admission"::DATE),
    admission_quarter = EXTRACT(QUARTER FROM "Date of Admission"::DATE),
    admission_year = EXTRACT(YEAR FROM "Date of Admission"::DATE),
    weekday_name = TO_CHAR("Date of Admission"::DATE, 'Day');

UPDATE staging_healthcare
SET age_group = CASE 
    WHEN Age BETWEEN 0 AND 17 THEN '0–17'
    WHEN Age BETWEEN 18 AND 35 THEN '18–35'
    WHEN Age BETWEEN 36 AND 50 THEN '36–50'
    WHEN Age BETWEEN 51 AND 65 THEN '51–65'
    ELSE '65+' 
END;

UPDATE staging_healthcare
SET billing_category = CASE 
    WHEN "Billing Amount" < 15000 THEN 'Low'
    WHEN "Billing Amount" BETWEEN 15000 AND 30000 THEN 'Medium'
    WHEN "Billing Amount" BETWEEN 30001 AND 45000 THEN 'High'
    ELSE 'Premium' 
END;

UPDATE staging_healthcare
SET stay_category = CASE 
    WHEN length_of_stay <= 5 THEN 'Short'
    WHEN length_of_stay BETWEEN 6 AND 14 THEN 'Medium'
    ELSE 'Long' 
END;