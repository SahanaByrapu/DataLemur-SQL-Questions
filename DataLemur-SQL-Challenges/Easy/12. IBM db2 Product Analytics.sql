--IBM db2 Product Analytics
--https://datalemur.com/questions/sql-ibm-db2-product-analytics

WITH employee_queries AS ( SELECT 
e.employee_id,
COALESCE(COUNT(DISTINCT q.query_id),0) AS unique_queries
FROM employees e 
LEFT JOIN queries q
ON e.employee_id=q.employee_id
AND q.query_starttime >='2023-07-01T00:00:00Z' AND q.query_starttime < '2023-10-01T00:00:00Z'
GROUP BY e.employee_id )



SELECT unique_queries, COUNT(employee_id) AS employee_count  
FROM employee_queries
GROUP BY unique_queries 
ORDER BY unique_queries;