-- SQL Basics: Raise to the Power
--https://leetcode.com/problems/npv-queries/description/

SELECT
  q.id,
  q.year,
  IFNULL(n.npv, 0) AS npv
FROM Queries AS q
LEFT JOIN NPV AS n
  ON q.id = n.id AND q.year = n.year;