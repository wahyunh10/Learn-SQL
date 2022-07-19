/*Query 8 - Which accounts used facebook as a channel to contact customers more than 6 times?*/
-- 46 ROWS

SELECT a.name
FROM accounts AS a
JOIN web_events AS w
ON w.account_id = a.ï»¿id
WHERE w.channel = 'facebook'
GROUP BY 1
HAVING 	COUNT(*) > 6;