-- Reported Posts
--https://leetcode.com/problems/reported-posts/description/

SELECT ROUND( SUM(CASE WHEN action='spam' THEN 1 ELSE 0 END)/COUNT(DISTINCT post_id),2) 
FROM Actions 
WHERE action = 'report';
