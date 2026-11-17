SELECT
    Country_Display AS Country,
    SUM(Arrivals) AS Arrivals
FROM tourism_arrivals
WHERE Year = 2022
GROUP BY Country_Display
ORDER BY Arrivals DESC
LIMIT 10;
