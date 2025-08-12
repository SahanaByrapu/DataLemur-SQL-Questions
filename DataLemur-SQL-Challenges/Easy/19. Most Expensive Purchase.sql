-- Most Expensive Purchase
-- https://datalemur.com/questions/most-expensive-purchase

SELECT user_id,
       MAX(spend) AS max_purchase
FROM amazon_transactions
GROUP BY user_id;