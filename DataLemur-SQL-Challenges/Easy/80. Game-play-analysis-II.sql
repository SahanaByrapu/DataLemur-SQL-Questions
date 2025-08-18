-- Game-play-analysis-II
 https://leetcode.com/problems/game-play-analysis-ii/description/

SELECT player_id, device_id 
FROM Activity WHERE player_id IN(
SELECT DISTINCT player_id, MIN(event_date) AS event_date
FROM Activity
GROUP BY player_id ) AS event_activity;

