/* Query 3*/
SELECT (o.total_amt_usd/(o.total+0.01)) AS unit_price, a.name AS acc_name, r.name AS region
FROM orders2 AS o
JOIN accounts AS a
ON a.ï»¿id = o.account_id
JOIN sales_reps AS s
ON s.ï»¿id = a.sales_rep_id
JOIN region AS r
ON s.region_id = r.ï»¿id
LIMIT 100;
/* 3 tables join one by one*/
-- Limited to 100 rows to avoid scrolling, total 6912 row