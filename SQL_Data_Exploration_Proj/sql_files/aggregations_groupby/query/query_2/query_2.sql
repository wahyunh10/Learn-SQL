/*Query 2*/

SELECT a.name, SUM(total_amt_usd) AS total_sales 
FROM accounts AS a
JOIN orders2 AS o
ON o.account_id = a.ï»¿id
GROUP BY a.name;