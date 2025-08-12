--Pharmacy Analytics (Part 2)
-- https://datalemur.com/questions/non-profitable-drugs

SELECT manufacturer, COUNT(drug) AS drug, SUM(cogs-total_sales) AS total_loss
FROM pharmacy_sales
WHERE cogs>total_sales
GROUP BY manufacturer
ORDER BY total_loss DESC;