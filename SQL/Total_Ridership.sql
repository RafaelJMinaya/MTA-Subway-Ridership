-- Default Table
SELECT *
FROM MTA.dbo.total_ridership_since_2018;


-- Total Ridership by Borough
SELECT _2023_ridership_rank AS 'Station Ridership Rank 2023', station_name AS 'Station Name', total_ridership_2023 AS 'Station Total Ridership in 2023'
FROM MTA.dbo.total_ridership_since_2018
ORDER BY _2023_ridership_rank ASC;


-- 2022 to 2023 Ridership Change by Station
SELECT station_name AS 'Station Name', FORMAT(((CAST(_2022_2023_change AS DECIMAL(10, 2))/CAST(total_ridership_2022 AS DECIMAL(10, 2)))) * 100, '0.##') + '%' AS '2022 to 2023 Ridership Change'
FROM MTA.dbo.total_ridership_since_2018
ORDER BY '2022 to 2023 Ridership Change' DESC;


-- Number of Stations By Borough
SELECT borough AS 'Borough', COUNT(station_name) AS 'Number of Stations', SUM(total_ridership_2023) AS 'Total Ridership in 2023', FORMAT(SUM(total_ridership_2023) * 100.0/(SELECT SUM(total_ridership_2023) FROM MTA.dbo.total_ridership_since_2018), '0.##') + '%' AS 'Percenatge of Total Ridership in 2023'
FROM MTA.dbo.total_ridership_since_2018
GROUP BY borough;
