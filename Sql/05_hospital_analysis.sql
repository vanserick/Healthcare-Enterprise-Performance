-- Top 10 Hospitals by Admission
SELECT Hospital, COUNT(*) as admissions, SUM("Billing Amount") as revenue, AVG("Billing Amount") as avg_billing
FROM staging_healthcare GROUP BY Hospital ORDER BY admissions DESC LIMIT 10;

-- Top 10 Doctors by Patient Load
SELECT Doctor, COUNT(*) as patient_count, SUM("Billing Amount") as revenue
FROM staging_healthcare GROUP BY Doctor ORDER BY patient_count DESC LIMIT 10;