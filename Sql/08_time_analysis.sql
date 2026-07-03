-- Monthly Trends over years
SELECT admission_year, admission_month, COUNT(*) as monthly_admissions, SUM("Billing Amount") as monthly_revenue, AVG(length_of_stay) as avg_stay
FROM staging_healthcare GROUP BY admission_year, admission_month ORDER BY admission_year, admission_month;