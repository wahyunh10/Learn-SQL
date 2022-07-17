/*Query 9 - Which account used facebook most as a channel?*/
-- Gilead Sciences

SELECT a.name, COUNT(*) AS total_used_facebook
FROM accounts AS a
JOIN web_events AS w
ON w.account_id = a.ï»¿id
WHERE w.channel = 'facebook'
GROUP BY a.name
ORDER BY COUNT(*) DESC
LIMIT 1;
