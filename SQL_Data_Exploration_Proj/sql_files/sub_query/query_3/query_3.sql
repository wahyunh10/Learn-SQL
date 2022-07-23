/*Query 3 - Count the accounts which have total_qty greater than the account with max standard_qty purchased
1. Aggregate functions are not allowed in where*/
/*Query 3*/  
SELECT count(*)
FROM (SELECT a.name,sum(o.total) AS total_qty, sum(o.standard_qty) AS standard_qty
FROM accounts AS a
JOIN orders2 AS o
ON o.account_id = a.ï»¿id
GROUP BY a.name) t1
WHERE Total_qty > (SELECT sum(o.total)
				FROM orders2 AS o
				JOIN accounts AS a
	            ON a.ï»¿id = o.account_id
				GROUP BY a.name
				ORDER BY SUM(o.standard_qty) desc
				LIMIT 1);