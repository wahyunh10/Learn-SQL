/*Query 10 - Direct - Most unique accounts using the direct channel (351)*/

SELECT w.channel, COUNT(DISTINCT a.name) AS total_unique_channel
FROM accounts AS a
JOIN web_events AS w
ON w.account_id =  a.ï»¿id
GROUP BY 1
ORDER BY 2 DESC;