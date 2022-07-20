/*Query 8*/

SELECT a.name, AVG(o.standard_qty) AS avg_standard, AVG(o.gloss_qty) AS avg_gloss, AVG(o.poster_qty) AS avg_poster
FROM accounts AS a
JOIN orders2 AS o
ON o.account_id = a.ï»¿id
GROUP BY a.name;