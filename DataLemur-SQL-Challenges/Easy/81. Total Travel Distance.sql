-- https://leetcode.com/problems/total-traveled-distance/description/

SELECT DISTINCT u.user_id, u.name AS name,IFNULL(SUM(r.distance),0) AS total_distance
FROM Users u 
LEFT JOIN Rides r
ON u.user_id = r.user_id
GROUP BY u.user_id,u.name
ORDER BY u.user_id ASC;
