-- consecutive-available-seats
-- https://leetcode.com/problems/consecutive-available-seats/description/

SELECT seat_id
FROM Seats 
GROUP BY seat_id
HAVING COUNT(*) >= 2 AND free=1
