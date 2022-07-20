/*Query 10 - 295 ROWS*/

SELECT s.name AS rep_name, w.channel, COUNT(*) AS occurences
FROM web_events AS w
JOIN accounts AS a
ON a.ï»¿id = w.account_id
JOIN sales_reps AS s
ON s.ï»¿id = a.sales_rep_id
GROUP BY s.name, w.channel
ORDER BY occurences DESC;