/*Query 7*/
SELECT  r.name AS region_name, count(*) AS no_salesreps
FROM sales_reps AS s
JOIN region AS r
ON r.ï»¿id = s.region_id
GROUP BY r.name
ORDER BY no_salesreps;