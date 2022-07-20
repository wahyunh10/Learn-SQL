/*Query 9*/

SELECT a.name, AVG(o.standard_amt_usd) AS avg_standard_amt, AVG(o.gloss_amt_usd) AS avg_gloss_amt, AVG(o.poster_amt_usd) AS avg_poster_amt
FROM accounts AS a
JOIN orders2 AS o
ON a.ï»¿id = o.account_id
GROUP BY a.name;