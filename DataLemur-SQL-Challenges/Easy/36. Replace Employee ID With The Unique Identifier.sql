-- Replace Employee ID With The Unique Identifier
-- https://leetcode.com/problems/replace-employee-id-with-the-unique-identifier/description/

# Write your MySQL query statement below
SELECT euni.unique_id, e.name 
FROM Employees e
LEFT OUTER JOIN
EmployeeUNI euni
ON e.id=euni.id;