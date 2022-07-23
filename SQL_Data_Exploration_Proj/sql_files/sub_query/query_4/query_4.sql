/*Query 4  - EOG Resources - 12,4,44,11,13,5 - a,b,d,f,o,t*/
SELECT a.name, w.channel, count(*) 
FROM web_events AS w
JOIN accounts AS a
ON a.ï»¿id = w.account_id
WHERE a.name = (SELECT a.name accname
				FROM orders2 AS o
				JOIN accounts AS a
	            ON a.ï»¿id = o.account_id
	            JOIN sales_reps AS s
	            ON s.ï»¿id = a.sales_rep_id
	            JOIN region as r
				ON r.ï»¿id = s.region_id
				GROUP BY a.name
				ORDER BY SUM(total_amt_usd) desc
				LIMIT 1)
GROUP BY a.name, w.channel;	
