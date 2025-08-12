-- App Click-through Rate (CTR)
-- Source: https://datalemur.com/questions/click-through-rate

-- Explanation:  We're using PERCENTILE_CONT window function to get median

SELECT app_id,
ROUND(100.0 *
SUM(1) FILTER (WHERE event_type='click') /
SUM(1) FILTER (WHERE event_type='impression'), 2) AS ctr
FROM events
WHERE  timestamp>='2022-01-01' AND timestamp<'2023-01-01'
GROUP BY app_id;