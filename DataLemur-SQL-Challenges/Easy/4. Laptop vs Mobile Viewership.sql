-- Unfinished Parts
-- Source: https://datalemur.com/questions/laptop-mobile-viewership

-- Explanation:  We're using CASE function window function to get median

SSELECT  
SUM(CASE WHEN  device_type='laptop' THEN 1 ELSE 0 END) AS laptop_views,
SUM(CASE WHEN  device_type IN ('tablet','phone') THEN 1 ELSE 0 END) AS mobile_views
FROM viewership
WHERE device_type in ('laptop', 'tablet','phone')




