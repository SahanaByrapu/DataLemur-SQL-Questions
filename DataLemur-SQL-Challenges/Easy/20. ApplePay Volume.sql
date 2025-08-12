-- ApplePay Volume
-- https://datalemur.com/questions/apple-pay-volume
SELECT 
    DATE_TRUNC('month', transaction_date) AS month,
    SUM(transaction_amount) AS applepay_volume
FROM transactions
WHERE payment_method = 'ApplePay'
GROUP BY DATE_TRUNC('month', transaction_date)
ORDER BY month;