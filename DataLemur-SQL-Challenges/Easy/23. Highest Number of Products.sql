-- https://datalemur.com/questions/sql-highest-products

SELECT customer_id,
       COUNT(DISTINCT product_id) AS unique_products
FROM customer_contracts
GROUP BY customer_id
ORDER BY unique_products DESC
LIMIT 1;

WITH product_counts AS (
    SELECT customer_id,
           COUNT(DISTINCT product_id) AS unique_products
    FROM customer_contracts
    GROUP BY customer_id
)
SELECT customer_id,
       unique_products
FROM product_counts
WHERE unique_products = (
    SELECT MAX(unique_products) FROM product_counts
);