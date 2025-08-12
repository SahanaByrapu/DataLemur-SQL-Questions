-- Page With No Likes
-- Source: https://datalemur.com/questions/sql-page-with-no-likes

-- Explanation:  We're using PERCENTILE_CONT window function to get median

SELECT
    customer_id,
    PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY order_amount) AS median_amount
FROM orders
GROUP BY customer_id;



