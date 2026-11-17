WITH country_year AS (
    SELECT
        Year,
        Country_Display AS Country,
        SUM(Arrivals) AS Arrivals
    FROM tourism_arrivals
    GROUP BY Year, Country_Display
),

ranked AS (
    SELECT
        Year,
        Country,
        Arrivals,
        RANK() OVER (
            PARTITION BY Year
            ORDER BY Arrivals DESC
        ) AS Country_Rank
    FROM country_year
)

SELECT *
FROM ranked
WHERE Country_Rank <= 10
ORDER BY Year, Country_Rank;
