/* QUery 3*/
SELECT w.occurred_at, w.channel, a.name
FROM web_events AS w
JOIN accounts AS a
ON a.ï»¿id = w.account_id
GROUP BY w.occurred_at, w.channel, a.name
ORDER BY w.occurred_at DESC
LIMIT 1;