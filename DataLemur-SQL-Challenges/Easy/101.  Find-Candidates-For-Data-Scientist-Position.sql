
--https://leetcode.com/problems/find-candidates-for-data-scientist-position/description/

SELECT c.candidate_id, c.name 
FROM Candidates c
JOIN Skills s 
ON c.candidate_id = s.candidate_id
WHERE s.skill IN ('Python', 'Machine Learning', 'Statistics')
GROUP BY c.candidate_id, c.name
HAVING COUNT(DISTINCT s.skill) = 3;
