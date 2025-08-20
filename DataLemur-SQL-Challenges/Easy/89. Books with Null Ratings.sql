
-- Books with Null Ratings
-- https://leetcode.com/problems/books-with-null-ratings/description/


SELECT *
FROM Books b
LEFT JOIN ORDERS o
ON b.book_id =o.book_id
WHERE o.order_id IS NULL
