
--shortest-distance-in-a-line
-- https://leetcode.com/problems/shortest-distance-in-a-line/description/


SELECT MIN(ABS(p1.x - p2.x)) AS shortest_distance
FROM Points p1, Points p2
WHERE p1.id != p2.id;