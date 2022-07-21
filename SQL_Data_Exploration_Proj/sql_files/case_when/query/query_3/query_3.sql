/*Query 3 - Top 3: EOG, Mosaic, IBM*/
SELECT a.name Account_name, sum(o.total_amt_usd) AS Total_spent, 
	CASE 
		WHEN SUM(o.total_amt_usd) > 200000 THEN 'greater than 200000'
		WHEN SUM(o.total_amt_usd) <= 200000 AND sum(o.total_amt_usd) >= 100000 				THEN 'Between 100000 and 200000'
		WHEN SUM(o.total_amt_usd) < 100000 THEN 'Under 100000'
	END AS Level
FROM orders2 AS o
JOIN accounts AS a
ON a.ï»¿id = o.account_id
GROUP BY a.name
ORDER BY SUM(total_amt_usd) DESC;
