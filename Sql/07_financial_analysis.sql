-- Revenue by Segmentations
SELECT "Medical Condition", SUM("Billing Amount") as revenue FROM staging_healthcare GROUP BY "Medical Condition" ORDER BY revenue DESC;
SELECT "Insurance Provider", SUM("Billing Amount") as revenue FROM staging_healthcare GROUP BY "Insurance Provider" ORDER BY revenue DESC;