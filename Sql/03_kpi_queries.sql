SELECT 
    COUNT(*) AS total_patients,
    SUM("Billing Amount") AS total_revenue,
    AVG("Billing Amount") AS avg_billing,
    AVG(length_of_stay) AS avg_length_of_stay,
    AVG(Age) AS avg_patient_age,
    COUNT(DISTINCT Doctor) AS total_doctors,
    COUNT(DISTINCT Hospital) AS total_hospitals,
    COUNT(DISTINCT "Insurance Provider") AS total_insurance_providers
FROM staging_healthcare;