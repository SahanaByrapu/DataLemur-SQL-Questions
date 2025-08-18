

--https://leetcode.com/problems/the-number-of-rich-customers/description/

SELECT COUNT( customer_id) AS rich_customer_count
FROM (SELECT DISTINCT customer_id
FROM Customers
GROUP BY customer_id
HAVING SUM(amount) > 500) AS rich_customers;
