

-- https://leetcode.com/problems/project-employees-ii/description/

WITH RankedProjects AS (
SELECT P.project_id, RANK() OVER(ORDER BY COUNT(E.employee_id) DESC) AS rank 
FROM Employee E 
INNER JOIN Project P    
ON E.employee_id=P.employee_id
GROUP BY P.project_id )

SELECT project_id
FROM RankedProjects
WHERE rank=1;
