-- form-a-chemical-bond
-- https://leetcode.com/problems/form-a-chemical-bond/description/

SELECT (SUM(CASE WHEN type = 'Metal'    THEN 1 ELSE 0 END) +
       SUM(CASE WHEN type = 'Nonmetal' THEN 1 ELSE 0 END))/2 AS total_bonds
FROM Compounds C;



