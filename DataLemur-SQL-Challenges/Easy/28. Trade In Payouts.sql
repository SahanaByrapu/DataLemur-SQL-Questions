--https://datalemur.com/questions/trade-in-payouts

SELECT
    customer_id,
    SUM(payout_amount) AS total_payout
FROM trade_ins
GROUP BY customer_id
HAVING SUM(payout_amount) > 1000
ORDER BY total_payout DESC;