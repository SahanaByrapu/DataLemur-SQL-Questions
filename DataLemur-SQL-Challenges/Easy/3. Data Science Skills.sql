-- Data Science Skills
-- Source: https://datalemur.com/questions/matching-skills

-- Explanation:  We're using HAVING ,COUNT to get median

SELECT candidate_id
FROM candidates
WHERE skill in ('Python' , 'Tableau', 'PostgreSQL')
GROUP BY candidate_id 
HAVING COUNT(skill)=3
ORDER BY candidate_id ASC;



