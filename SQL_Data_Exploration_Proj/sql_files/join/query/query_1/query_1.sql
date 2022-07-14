/* Query 1*/
SELECT a.primary_poc, w.channel, w.occurred_at, a.name
FROM web_events AS w
JOIN accounts AS a
ON w.account_id = a.ï»¿id
WHERE a.name = 'walmart';
/* When alias is used, the table name or column name has to be replaced everywhere within the query */

