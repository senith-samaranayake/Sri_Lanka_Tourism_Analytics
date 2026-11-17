SELECT
    Year,
    Month_Number,
    Month,
    SUM(Arrivals) AS Total_Arrivals
FROM tourism_arrivals
GROUP BY Year, Month_Number, Month
ORDER BY Year, Month_Number;
