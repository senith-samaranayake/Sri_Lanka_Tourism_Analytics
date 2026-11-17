SELECT
    Month_Number,
    Month,
    SUM(CASE WHEN Year = 2022 THEN Arrivals ELSE 0 END) AS Arrivals_2022,
    SUM(CASE WHEN Year = 2023 THEN Arrivals ELSE 0 END) AS Arrivals_2023,
    SUM(CASE WHEN Year = 2024 THEN Arrivals ELSE 0 END) AS Arrivals_2024,
    SUM(CASE WHEN Year = 2025 THEN Arrivals ELSE 0 END) AS Arrivals_2025,
    SUM(CASE WHEN Year = 2026 THEN Arrivals ELSE 0 END) AS Arrivals_2026
FROM tourism_arrivals
GROUP BY Month_Number, Month
ORDER BY Month_Number;
