
-- https://datalemur.com/questions/revenue-by-product-line

SELECT 
    p.product_line,
    ROUND(SUM(s.quantity * p.price)::numeric, 2) AS total_revenue
FROM sales AS s
JOIN products AS p
  ON s.product_id = p.product_id
GROUP BY p.product_line
ORDER BY total_revenue DESC;