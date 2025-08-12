-- https://leetcode.com/problems/article-views-i/description/

# Write your MySQL query statement below
SELECT author_id AS id
FROM Views
WHERE author_id=viewer_id
GROUP BY author_id
HAVING COUNT(*)>=1
ORDER BY id ASC;