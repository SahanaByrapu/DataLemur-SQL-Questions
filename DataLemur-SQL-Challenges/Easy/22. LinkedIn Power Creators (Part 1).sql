-- https://datalemur.com/questions/linkedin-power-creators
 SELECT user_id,
       COUNT(*) AS article_count
FROM linkedin_posts
WHERE post_type = 'article'
  AND EXTRACT(YEAR FROM post_date) = 2021
GROUP BY user_id
HAVING COUNT(*) >= 2;