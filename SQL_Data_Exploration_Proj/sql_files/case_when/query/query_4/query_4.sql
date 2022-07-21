/*Query 4 - 322 ROWS, Pacific Life, Mosaic, CHS */
SELECT a.name Account_name, sum(o.total_amt_usd) AS Total_spent, 
	CASE 
		WHEN SUM(o.total_amt_usd) > 200000 THEN 'greater than 200000'
		WHEN SUM(o.total_amt_usd) <= 200000 AND sum(o.total_amt_usd) >= 100000 				THEN 'Between 100000 and 200000'
		WHEN SUM(o.total_amt_usd) < 100000 THEN 'Under 100000'
	END AS Level
FROM orders2 AS o
JOIN accounts AS a
ON a.ï»¿id = o.account_id
WHERE o.occurred_at BETWEEN '2016-01-01' AND '2018-01-01' 
GROUP BY a.name
ORDER BY SUM(total_amt_usd) DESC;
