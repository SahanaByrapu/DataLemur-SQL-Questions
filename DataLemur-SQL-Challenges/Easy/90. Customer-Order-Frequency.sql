-- customer-order-frequency
-- https://leetcode.com/problems/customer-order-frequency/description/

SELECT COUNT(order_id) AS order_count, customer_id
FROM ORDERS
GROUP BY customer_id
ORDER BY order_count DESC