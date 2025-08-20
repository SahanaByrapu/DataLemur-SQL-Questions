
-- Low-Quality-Problems
-- https://leetcode.com/problems/low-quality-problems/description/

SELECT problem_id, problem_name
FROM Problems
WHERE acceptance < 0.3
ORDER BY problem_id;