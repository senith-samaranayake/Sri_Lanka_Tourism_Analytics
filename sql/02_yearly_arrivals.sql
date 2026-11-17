SELECT
    Year,
    SUM(Arrivals) AS Total_Arrivals
FROM tourism_arrivals
GROUP BY Year
ORDER BY Year;
