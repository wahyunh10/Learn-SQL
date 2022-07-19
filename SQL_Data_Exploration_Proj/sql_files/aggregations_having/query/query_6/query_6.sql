/*Query 6 - 6.	Which account has spent the most with us?*/
-- EOG Resources

SELECT a.name, SUM(o.total_amt_usd) AS total_spent
FROM accounts AS a
JOIN orders2 AS o
ON o.account_id = a.ï»¿id
GROUP BY a.name
ORDER BY SUM(o.total_amt_usd) DESC
LIMIT 1;

