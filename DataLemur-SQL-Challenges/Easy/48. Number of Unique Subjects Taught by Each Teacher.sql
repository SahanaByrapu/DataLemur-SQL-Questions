-- Number of Unique Subjects Taught by Each Teacher
-- https://leetcode.com/problems/number-of-unique-subjects-taught-by-each-teacher/

SELECT v.customer_id, COUNT(*) AS count_no_trans
FROM Visits v
WHERE v.visit_id NOT IN (SELECT t.visit_id FROM Transactions t )
GROUP BY v.customer_id;

SELECT v.customer_id, COUNT(v.visit_id) AS count_no_trans
FROM Visits v
LEFT JOIN  Transactions t
ON v.visit_id = t.visit_id
WHERE t.visit_id IS NULL
GROUP BY v.customer_id;