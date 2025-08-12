-- Histogram of Tweets
-- Source: https://datalemur.com/questions/sql-histogram-tweets

-- Explanation:  We're using PERCENTILE_CONT window function to get median

SELECT tweets_count_per_user AS tweet_bucket,  COUNT(user_id) as users_num
FROM ( SELECT user_id, COUNT(tweet_id) AS tweets_count_per_user
FROM tweets
WHERE tweet_date BETWEEN '2022-01-01' AND '2022-12-31'
GROUP BY user_id ) AS total_tweets
GROUP BY tweets_count_per_user
ORDER BY tweet_bucket;



