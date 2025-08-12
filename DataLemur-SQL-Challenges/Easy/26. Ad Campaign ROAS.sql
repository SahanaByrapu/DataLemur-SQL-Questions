
-- https://datalemur.com/questions/ad-campaign-roas

SELECT 
    campaign_id,
    ROUND(SUM(revenue)::numeric / NULLIF(SUM(spend), 0), 2) AS roas
FROM ad_campaigns
GROUP BY campaign_id
HAVING SUM(revenue)::numeric / NULLIF(SUM(spend), 0) > 1.0;