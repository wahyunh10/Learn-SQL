/* Query 2*/
SELECT s.name AS rep_name, a.name AS acc_name, r.name AS region
FROM sales_reps AS S
JOIN accounts AS A
ON s.ï»¿id = a.sales_rep_id
JOIN region AS r
ON s.region_id = r.ï»¿id
ORDER BY a.name
LIMIT 100;
/*When the names of column match in different tables (which are joined), it is mandatory to rename them for display*/