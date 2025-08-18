--https://leetcode.com/problems/create-a-session-bar-chart/description/

SELECT 

(CASE WHEN durations ≥ 0 and < 300 THEN "[0–5>" END
  WHEN durations ≥ 300 and < 600 THEN "[5–10>" END
  WHEN durations ≥ 600 and < 900 THEN "[10–15>" END
  WHEN durations ≥ 900 and < 1200 THEN "[15–20>" END
  WHEN durations ≥ 1200 THEN "[20+]" END) AS bin,
  COUNT(*) AS session_count
FROM Sessions
GROUP BY bin
ORDER BY bin;
