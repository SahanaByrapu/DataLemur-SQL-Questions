
-- https://datalemur.com/questions/sql-top-businesses

SELECT 
    business_id,
    ROUND(AVG(stars)::numeric, 2) AS avg_rating
FROM yelp_reviews
GROUP BY business_id
HAVING AVG(stars) >= 4.0
ORDER BY avg_rating DESC;