
-- Percentage of Users Attended a Contest
-- https://leetcode.com/problems/percentage-of-users-attended-a-contest/description/

SELECT R.contest_id, ROUND(100*COUNT(DISTINCT R.user_id)/(SELECT COUNT(U.user_id) FROM Users U),2) AS percentage
FROM Register R
GROUP BY R.contest_id
ORDER BY percentage DESC, R.contest_id ASC;