SELECT
    Month_Number,
    Month,
    ROUND(AVG(Arrivals), 2) AS Average_Monthly_Arrivals,
    MIN(Arrivals) AS Minimum_Arrivals,
    MAX(Arrivals) AS Maximum_Arrivals
FROM tourism_arrivals
GROUP BY Month_Number, Month
ORDER BY Month_Number;
