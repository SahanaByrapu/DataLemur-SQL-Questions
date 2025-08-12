-- Unfinished Parts
-- Source: https://datalemur.com/questions/quickbooks-vs-turbotax

-- Find the number of distinct users who used QuickBooks but not TurboTax.
-- Explanation:  We're using PERCENTILE_CONT window function to get median

SELECT  COUNT(*)
FROM user_actions
WHERE user_id in 
(SELECT user_id
FROM user_actions
WHERE product is in ('QuickBooks'))
HAVING product not in ('TurboTax');

SELECT COUNT(*) AS distinct_users 
FROM (SELECT user_id
FROM user_actions
GROUP BY user_id
HAVING
  SUM(CASE WHEN product='QuickBooks' THEN 1 ELSE 0 END) > 0
  AND SUM(CASE WHEN product='TurboTax' THEN 1 ELSE 0 END) = 0))
  