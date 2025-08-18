-- Biggest Single Number
-- https://leetcode.com/problems/biggest-single-number/description/

SELECT MAX(num) as num
FROM 
(SELECT num 
FROM MyNumbers 
GROUP BY num
HAVING COUNT(num)=1) AS NUM_Tables