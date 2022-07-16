/*Query 2 - How many accounts have more than 20 orders?*/
-- 120 ROW

SELECT a.name, COUNT(*)
FROM accounts AS a
JOIN orders2 AS o
ON o.account_id = a.ï»¿id
GROUP BY 1
HAVING COUNT(*) > 20;