/*Query 1 - How many of the sales reps have more than 5 accounts that they manage?*/
-- 34 ROW

SELECT s.name, COUNT(*)
FROM accounts AS a
JOIN sales_reps AS s
ON s.ï»¿id = a.sales_rep_id
GROUP BY 1
HAVING COUNT(*) > 5;