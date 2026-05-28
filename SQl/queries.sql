select count(*) from air_quality_data;
/* query 1. avg AQI per city
   question- which city has the worst Avg AQI? */
select City,count(*) as total_days,round(avg(AQI),2)as avg_AQI
from air_quality_data
group by City
order by avg_AQI desc ;
/* Query 2: Monthly Pollution Trend
   Question: Which months are most polluted?*/
select month(CONVERT(DATE, Date, 103)) as month_no ,datename(month,CONVERT(DATE, Date, 103)) as month_name,
round(avg(AQI),2) as avg_AQI , count(*) as days_no from air_quality_data 
group by month(CONVERT(DATE, Date, 103)),datename(month,CONVERT(DATE, Date, 103))
order by avg_AQI desc;
-- Query 3: Worst Pollution Days
-- Question: Which were the most dangerous pollution days?
select City,Date,AQI,AQI_Bucket from air_quality_data
where AQI>300
order by AQI desc;
-- Query 3b: Worst Pollution Days Summary by City
-- Question: Which city has most dangerous days?

SELECT
    City,
    COUNT(*) AS Dangerous_Days,
    MAX(AQI) AS Worst_AQI,
    ROUND(AVG(AQI), 2) AS Avg_AQI_On_Bad_Days
FROM air_quality_data
WHERE AQI > 300
GROUP BY City
ORDER BY Dangerous_Days DESC;

-- Query 4: Year-wise Trend Per City
-- Question: Is air quality improving over the years?

SELECT
    City,
    YEAR(CONVERT(DATE, Date, 103)) AS Year,
    ROUND(AVG(AQI), 2) AS Avg_AQI,
    COUNT(*) AS Total_Days
FROM air_quality_data
GROUP BY 
    City,
    YEAR(CONVERT(DATE, Date, 103))
ORDER BY 
    City ASC,
    Year ASC
-- Query 4b: Overall National Trend

SELECT
    YEAR(CONVERT(DATE, Date, 103)) AS Year,
    ROUND(AVG(AQI), 2) AS National_Avg_AQI,
    COUNT(*) AS Total_Days
FROM air_quality_data
GROUP BY YEAR(CONVERT(DATE, Date, 103))
ORDER BY Year ASC;
