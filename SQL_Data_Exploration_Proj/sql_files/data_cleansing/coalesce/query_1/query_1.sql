/*Query 1*/
SELECT COALESCE(a.ï»¿id, a.ï»¿id) AS modif_acc_id
FROM accounts AS a
LEFT JOIN orders2 AS o
ON a.ï»¿id = o.account_id
WHERE o.total IS NULL;