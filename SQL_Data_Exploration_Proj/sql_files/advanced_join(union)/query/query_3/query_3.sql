/*Query 3*/
/*Performing operations on the combined dataset*/
WITH double_accounts AS 
(SELECT *
FROM accounts AS a1

UNION ALL

SELECT *
FROM accounts AS a2)

SELECT name, COUNT(*)
FROM double_accounts
GROUP BY 1
ORDER BY 2 DESC
LIMIT 100;