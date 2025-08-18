https://leetcode.com/problems/highest-salaries-difference/description/

SELECT MAX(s) - MIN(s) AS salary_difference
FROM (
    SELECT MAX(salary) AS s
    FROM salaries
    GROUP BY department
) AS dept_salaries;
