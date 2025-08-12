-- User Activity for the Past 30 Days I
-- https://leetcode.com/problems/user-activity-for-the-past-30-days-i/description/

# Write your MySQL query statement below

SELECT w1.id 
FROM Weather w1
JOIN Weather w2
ON DATEDIFF(w1.recordDate, w2.recordDate)=1
WHERE w1.temperature > w2.temperature;


