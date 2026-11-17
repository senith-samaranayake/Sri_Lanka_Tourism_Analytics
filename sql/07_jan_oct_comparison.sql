SELECT
    Year,
    SUM(Arrivals) AS Jan_Oct_Arrivals
FROM tourism_arrivals
WHERE Month_Number <= 10
GROUP BY Year
ORDER BY Year;
