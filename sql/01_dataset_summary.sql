SELECT
    COUNT(*) AS Total_Rows,
    COUNT(DISTINCT Country_Display) AS Countries,
    MIN(Year) AS First_Year,
    MAX(Year) AS Last_Year,
    MIN(Date) AS First_Date,
    MAX(Date) AS Last_Date,
    SUM(CASE WHEN Arrivals IS NULL THEN 1 ELSE 0 END) AS Missing_Arrivals
FROM tourism_arrivals;
