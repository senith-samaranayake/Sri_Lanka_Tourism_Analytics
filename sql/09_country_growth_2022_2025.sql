WITH country_year AS (
    SELECT
        Country_Display AS Country,
        Year,
        SUM(Arrivals) AS Arrivals
    FROM tourism_arrivals
    WHERE Year IN (2022, 2025)
    GROUP BY Country_Display, Year
),

pivoted AS (
    SELECT
        Country,
        MAX(CASE WHEN Year = 2022 THEN Arrivals END) AS Arrivals_2022,
        MAX(CASE WHEN Year = 2025 THEN Arrivals END) AS Arrivals_2025
    FROM country_year
    GROUP BY Country
)

SELECT
    Country,
    Arrivals_2022,
    Arrivals_2025,
    ROUND(
        100.0 * (Arrivals_2025 - Arrivals_2022)
        / NULLIF(Arrivals_2022, 0),
        2
    ) AS Growth_Percent,
    (Arrivals_2025 - Arrivals_2022) AS Absolute_Change
FROM pivoted
WHERE Arrivals_2022 >= 10000
ORDER BY Growth_Percent DESC;
