/*Query 5*/
SELECT  a.primary_poc
FROM web_events AS w
JOIN accounts AS a
ON a.ï»¿id = w.account_id
GROUP BY a.primary_poc, w.occurred_at /* No need of grouping by primary_poc. Time of occurrence is the conditional entity here.*/
ORDER BY w.occurred_at
LIMIT 1;