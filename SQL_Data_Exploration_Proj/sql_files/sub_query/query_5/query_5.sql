/*Query 5 - Life time avg. amount spent for the top 1- spending amounts
1. This was an overkill
2. Knowing the meaning is important
3. Lifetime average amount is something which is the average of the amounts during the period under consideration
4. 
*/
SELECT m2.aname AS account_name, (m2.total_spent/m2.num_orders) AS lif_avg_spent
FROM  (SELECT a.name aname, sum(o.total_amt_usd) AS total_spent, count(*) AS num_orders 
       FROM orders2 AS o
       JOIN accounts AS a
       ON a.ï»¿id = o.account_id
       GROUP BY a.name) m2
JOIN  (SELECT a.name accname, sum(o.total_amt_usd) AS total_spent
				FROM orders2 AS o
				JOIN accounts AS a
	            ON a.ï»¿id = o.account_id
	            JOIN sales_reps AS s
	            ON s.ï»¿id = a.sales_rep_id
	            JOIN region AS r
				ON r.ï»¿id = s.region_id
				GROUP BY a.name
				ORDER BY SUM(total_amt_usd) desc
				LIMIT 10) m1
ON m1.accname = m2.aname
ORDER BY lif_avg_spent desc;

/*Ans*/
SELECT avg(total_spent)
FROM(
SELECT a.name accname, sum(o.total_amt_usd) AS total_spent
				FROM orders2 AS o
				JOIN accounts AS a
	            ON a.ï»¿id = o.account_id
	            JOIN sales_reps AS s
	            ON s.ï»¿id = a.sales_rep_id
	            JOIN region AS r
				ON r.ï»¿id = s.region_id
				GROUP BY a.name
				ORDER BY SUM(total_amt_usd) desc
				LIMIT 10) m1;
