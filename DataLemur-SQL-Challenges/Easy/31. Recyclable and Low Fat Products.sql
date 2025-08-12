
-- https://leetcode.com/problems/recyclable-and-low-fat-products/description/

# Write your MySQL query statement below

SELECT product_id
FROM Products
WHERE low_fats='Y' AND recyclable='Y';