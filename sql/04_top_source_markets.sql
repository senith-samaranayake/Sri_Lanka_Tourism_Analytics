SELECT
    Country_Display AS Country,
    SUM(Arrivals) AS Total_Arrivals,
    ROUND(
        100.0 * SUM(Arrivals) /
        (SELECT SUM(Arrivals)
         FROM tourism_arrivals),
        2
    ) AS Share_Percent
FROM tourism_arrivals
GROUP BY Country_Display
ORDER BY Total_Arrivals DESC
LIMIT 15;
