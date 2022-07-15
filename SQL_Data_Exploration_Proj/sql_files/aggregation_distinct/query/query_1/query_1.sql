/*Query 1*/
SELECT DISTINCT a.name, r.name AS reg_name
FROM accounts AS a
JOIN sales_reps AS s
ON s.ï»¿id = a.sales_rep_id
JOIN region AS r
ON r.ï»¿id = s.region_id