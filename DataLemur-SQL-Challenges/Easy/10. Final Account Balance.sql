-- Unfinished Parts
-- Source: https://datalemur.com/questions/final-account-balance

-- Explanation:  We're using PERCENTILE_CONT window function to get median 

SELECT account_id, SUM(final_balance) AS final_balance
FROM transactions
GROUP BY  account_id
ORDER BY  account_id;