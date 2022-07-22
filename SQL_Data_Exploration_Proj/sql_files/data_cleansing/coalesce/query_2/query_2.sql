/*Query 2 - Getting the table output as if there are no nulls is the goal*/
SELECT *, COALESCE(o.account_id, a.ï»¿id) AS modif_o_acc_id
FROM accounts AS a
LEFT JOIN orders2 AS o
ON a.ï»¿id = o.account_id
WHERE o.total IS NULL;