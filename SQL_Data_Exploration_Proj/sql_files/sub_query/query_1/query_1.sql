/* Query 1 - Region wise top sales performers (sales_reps)*/

SELECT t3.region_name, t3.rep_name
FROM 
	(SELECT r.name AS region_name, r.name AS rep_name, SUM(total_amt_usd) AS sales_made
	FROM orders2 AS o
    JOIN accounts AS a
    ON a.ï»¿id = o.account_id
	JOIN sales_reps AS s
    ON s.ï»¿id = a.sales_rep_id
    JOIN region AS r
    ON r.ï»¿id = s.region_id
    GROUP BY s.name, r.name) AS t3
JOIN 
	(SELECT t1.region_name, MAX(t1.sales_made) AS max_sales
    FROM (SELECT r.name region_name,s.name rep_name,  SUM(o.total_amt_usd) Sales_made
				  FROM orders2 AS o 
				  JOIN accounts AS a
	              ON a.ï»¿id = o.account_id
	              JOIN sales_reps AS s
	              ON s.ï»¿id = a.sales_rep_id
	              JOIN region AS r
				  ON r.ï»¿id = s.region_id
				  GROUP BY r.name,s.name) AS t1
			GROUP BY t1.region_name) AS t2
ON t3.Sales_made = t2.Max_sales;
	