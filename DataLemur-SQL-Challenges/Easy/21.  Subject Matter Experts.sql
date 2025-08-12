-- Subject Matter Experts
-- https://datalemur.com/questions/subject-matter-experts

SELECT employee_id
FROM employee_skills
GROUP BY employee_id
HAVING COUNT(DISTINCT skill_id) > 1;