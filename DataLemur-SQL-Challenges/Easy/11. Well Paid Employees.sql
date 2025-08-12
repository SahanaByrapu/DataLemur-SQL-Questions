- Well Paid Employees
-- Source: https://datalemur.com/questions/sql-well-paid-employees

-- Explanation:  We're using PERCENTILE_CONT window function to get median

SELECT e1.employee_id, name AS employee_name
FROM employee e1
WHERE manager_id in (SELECT e2.employee_id FROM employee e2 WHERE 
e1.salary > e2.salary);

SELECT 
e1.employee_id, 
e1.name AS employee_name
FROM employee e1
INNER JOIN employee e2
ON e1.manager_id=e2.employee_id
WHERE e1.salary>e2.salary;