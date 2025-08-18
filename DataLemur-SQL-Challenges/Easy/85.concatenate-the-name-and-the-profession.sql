
--concatenate-the-name-and-the-profession
-- https://leetcode.com/problems/concatenate-the-name-and-the-profession/description/

SELECT person_id, CONCAT(name ,substr(profession,1,1) AS name
FROM Person;

