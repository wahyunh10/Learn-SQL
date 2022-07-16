/*Query 3 - Which account has the most orders?
Leucadia National - 71*/

SELECT a.name, COUNT(o.occurred_at) AS total_order
FROM accounts AS a
JOIN orders2 AS o
ON o.account_id = a.ï»¿id
GROUP BY 1
ORDER BY 2 DESC
LIMIT 1;

