-- Invalid Tweets
-- https://leetcode.com/problems/invalid-tweets/description/

SELECT tweet_id 
FROM Tweets
WHERE CHAR_LENGTH(content)>15

--LENGTH() returns the length of the string measured in bytes.
--CHAR_LENGTH() returns the length of the string measured in characters.