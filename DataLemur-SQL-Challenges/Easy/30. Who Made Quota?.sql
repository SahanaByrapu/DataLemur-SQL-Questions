
-- https://datalemur.com/questions/oracle-sales-quota

SELECT
    salesperson_id,
    SUM(sales_amount) AS total_sales,
    MAX(sales_quota) AS quota
FROM sales
GROUP BY salesperson_id
HAVING SUM(sales_amount) >= MAX(sales_quota);