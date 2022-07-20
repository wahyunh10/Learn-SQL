/*Query 5 - 2016 - May*/
SELECT EXTRACT(MONTH FROM o.occurred_at) AS month, sum(o.gloss_amt_usd) AS amt_spent_gloss_walmart
FROM orders2 AS o
JOIN accounts AS a
ON a.ï»¿id = o.account_id
WHERE a.name = 'Walmart'
GROUP BY 1
ORDER BY 2 DESC;