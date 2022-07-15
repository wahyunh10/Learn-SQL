/*Query 2*/
SELECT s.name, COUNT(*) AS no_accounts
FROM accounts AS a
JOIN sales_reps AS s
ON s.ï»¿id = a.sales_rep_id
GROUP BY s.name
ORDER BY no_accounts;

SELECT DISTINCT s.ï»¿id, s.name
FROM sales_reps AS s;