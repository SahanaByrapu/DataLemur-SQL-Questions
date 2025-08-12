-- Average Post Hiatus
-- Source: https://datalemur.com/questions/sql-average-post-hiatus-1

-- Explanation:  We're using PERCENTILE_CONT window function to get median

SELECT user_id, 
DATEDIFF(MAX(DATE(post_date)), MIN(DATE(post_date))) AS days_between
FROM posts 
WHERE post_date >= '2021-01-01' AND post_date <= '2021-12-31'
GROUP BY user_id
HAVING COUNT(*)>=2;
