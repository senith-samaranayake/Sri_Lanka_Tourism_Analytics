SELECT
    Country_Display AS Country,
    SUM(Arrivals) AS Arrivals,
    ROUND(
        100.0 * SUM(Arrivals) /
        (
            SELECT SUM(Arrivals)
            FROM tourism_arrivals
            WHERE Year = 2026
              AND Month_Number <= 10
        ),
        2
    ) AS Share_Percent
FROM tourism_arrivals
WHERE Year = 2026
  AND Month_Number <= 10
GROUP BY Country_Display
ORDER BY Arrivals DESC
LIMIT 15;
