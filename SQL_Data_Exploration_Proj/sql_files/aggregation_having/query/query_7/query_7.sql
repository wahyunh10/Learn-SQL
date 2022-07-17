/*Query 7 - 7.	Which account has spent the least with us?*/
-- Nike

SELECT a.name, SUM(o.total_amt_usd) AS total_spent
FROM accounts AS a
JOIN orders2 AS o
ON o.account_id = a.ï»¿id
GROUP BY 1
ORDER BY SUM(o.total_amt_usd) ASC
LIMIT 1;
