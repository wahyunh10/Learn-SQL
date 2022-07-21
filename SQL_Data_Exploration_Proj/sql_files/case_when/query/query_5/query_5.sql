/*Query 5 - Subquery table never ends with semi-colon. earlie, vernita, tia are the top 3. - 50 ROWS*/
SELECT rep_name, Number,
	   CASE WHEN Number > 200 THEN 'top'
       ELSE 'not' END AS top_or_not 
FROM (SELECT s.name As rep_name, count(*) AS Number
	FROM orders2 AS o
	JOIN accounts AS a
	ON a.ï»¿id = o.account_id
	JOIN sales_reps AS s
	ON a.sales_rep_id = s.ï»¿id	
	GROUP BY s.name) AS Topnot
Order BY top_or_not DESC, number desc;
