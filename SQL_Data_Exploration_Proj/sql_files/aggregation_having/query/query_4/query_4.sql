/*Query 4 - Which accounts spent more than 30,000 USD total across all orders?*/
-- 204 ROW

SELECT a.name, SUM(o.total_amt_usd) AS total_spent_USD
FROM accounts AS a
JOIN orders2 AS o
ON o.account_id = a.ï»¿id
GROUP BY 1
HAVING SUM(o.total_amt_usd) > 30000
ORDER BY 2 desc;