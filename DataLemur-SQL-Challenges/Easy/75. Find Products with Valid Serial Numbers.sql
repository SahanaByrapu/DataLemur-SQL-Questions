-- Find Products with Valid Serial Numbers
-- https://leetcode.com/problems/find-products-with-valid-serial-numbers/description/

SELECT  product_id, product_name, description 
FROM products
WHERE description REGEXP  '(^|[^A-Za-z])SN[0-9]{4}-[0-9]{4}([^0-9]|$)'