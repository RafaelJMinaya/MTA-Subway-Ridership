-- Default Table
SELECT *
FROM MTA.dbo.monthly_riders_since_2008;


-- By Year Analysis on Ridership
SELECT Year, SUM(Ridership) AS 'Total Estimated Ridership'
FROM MTA.dbo.monthly_riders_since_2008
WHERE Year < 2024
GROUP BY Year
ORDER BY Year ASC;


-- By Year Analysis on Ridership
SELECT Month, SUM(Ridership) AS 'Total Estimated Ridership 2023'
FROM MTA.dbo.monthly_riders_since_2008
WHERE Year = 2023
GROUP BY Month
ORDER BY Month ASC;
