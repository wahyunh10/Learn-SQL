/*Query 6 - 50 - earlie, vernita, tia - there are few upsets as quoted*/
SELECT rep_name, Number, total_sales,
	   CASE 
       WHEN Number > 200 OR total_sales > 750000 THEN 'top'
       WHEN (Number >150 AND Number <=200) OR (total_sales > 500000 and total_sales <= 750000) THEN 'middle'
       ELSE 'low' END AS tmn 
FROM (SELECT s.name AS rep_name, count(*) AS Number, sum(total_amt_usd) AS total_sales
	FROM orders2 AS o
	JOIN accounts AS a
	ON a.ï»¿id = o.account_id
	JOIN sales_reps AS s
	ON a.sales_rep_id = s.ï»¿id	
	GROUP BY s.name) AS Topnot
Order BY total_sales desc;
