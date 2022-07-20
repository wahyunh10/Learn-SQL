/*Query 11 - 24 ROWS*/
SELECT r.name region_name, w.channel, count(*) AS occurrences
FROM web_events AS w
JOIN accounts AS a
ON a.ï»¿id = w.account_id
JOIN sales_reps AS s
ON s.ï»¿id = a.sales_rep_id
JOIN region AS r
ON r.ï»¿id = s.region_id 
GROUP BY r.name, w.channel
ORDER BY occurrences DESC;