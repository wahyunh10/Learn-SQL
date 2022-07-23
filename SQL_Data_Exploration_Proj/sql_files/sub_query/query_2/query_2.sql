/*QUery 2 - 2357 number of orders in the region with maximum amount of sales*/
SELECT count(*) 
FROM orders2 AS o
JOIN accounts AS a
ON a.ï»¿id = o.account_id
JOIN sales_reps AS s
ON s.ï»¿id = a.sales_rep_id
JOIN region AS r
ON r.ï»¿id = s.region_id
WHERE r.name = (SELECT r.name AS regname
				FROM orders2 AS o
				JOIN accounts AS a
	            ON a.ï»¿id = o.account_id
	            JOIN sales_reps AS s
	            ON s.ï»¿id = a.sales_rep_id
	            JOIN region AS r
				ON r.ï»¿id = s.region_id
				GROUP BY r.name
				ORDER BY SUM(total_amt_usd) desc
				LIMIT 1);