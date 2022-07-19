/*Query 6 - More granular*/
SELECT  a.name, min(o.total_amt_usd) AS small_order
FROM orders2 AS o
JOIN accounts AS a
ON a.ï»¿id = o.account_id
GROUP BY a.name
ORDER BY small_order;