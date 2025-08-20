-- Product-Sales-Analysis-ii
-- https://leetcode.com/problems/product-sales-analysis-ii/description/

ELECT product_id, SUM(quantity) AS total_quantity
FROM Sales
GROUP BY product_id;
