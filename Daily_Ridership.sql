-- Default Table
SELECT *
FROM MTA.dbo.daily_riders_since_2020;


-- By Year Analysis on Ridership
SELECT Year, SUM(Total_Estimated_Ridership) AS 'Total Estimated Ridership', CONCAT(ROUND(AVG(Comparable_to_Pre_Pandemic_Days * 100), 2), '%') AS 'Percentage of Ridership Compared to Pre-Pandemic Days' 
FROM MTA.dbo.daily_riders_since_2020
GROUP BY Year
ORDER BY Year ASC;


-- By Day of Week in 2023
SELECT Day_of_Week, SUM(Total_Estimated_Ridership) AS 'Total Estimated Ridership 2023' 
FROM MTA.dbo.daily_riders_since_2020
WHERE Year = 2023
GROUP BY Day_of_Week
ORDER BY Day_of_Week ASC;
