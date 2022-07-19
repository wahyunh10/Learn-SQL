/*Query 5 - 5.	Which accounts spent less than 1,000 usd total across all orders?*/
-- 3 ROW

SELECT a.name
FROM accounts AS a
JOIN orders2 AS o
ON o.account_id = a.ï»¿id
GROUP BY 1
HAVING sum(o.total_amt_usd) < 1000;
