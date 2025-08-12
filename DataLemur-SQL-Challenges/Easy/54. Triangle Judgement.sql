-- Triangle Judgement
-- https://leetcode.com/problems/triangle-judgement/description/

SELECT user_id, COUNT(follower_id) AS followers_count
FROM Followers 
GROUP BY  user_id
ORDER BY user_id ASC;