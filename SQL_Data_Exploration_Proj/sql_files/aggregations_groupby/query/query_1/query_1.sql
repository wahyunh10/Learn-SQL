/* Query 1 - Sometimes ORDER BY is sufficient. There will be no need of GROUP BY*/
SELECT  a.name, o.occurred_at
FROM accounts AS a
JOIN orders2 AS o
ON a.ï»¿id = o.account_id
GROUP BY a.name, o.occurred_at /*redundant GROUP BY*/
ORDER BY o.occurred_at 
LIMIT 1;