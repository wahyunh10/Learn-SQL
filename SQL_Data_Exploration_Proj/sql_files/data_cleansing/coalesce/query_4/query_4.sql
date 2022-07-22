/*Query 4*/
SELECT *,
COALESCE(a.ï»¿id, a.ï»¿id) AS modified_id,
COALESCE(o.account_id,a.ï»¿id) AS modified_acc,
COALESCE(o.standard_qty,0) AS modified_st_qty,
COALESCE(o.poster_qty,0) AS modified_pos_qty,
COALESCE(o.gloss_qty,0) AS modified_gloss_qty,
COALESCE(o.standard_amt_usd,0) AS modified_std_amt,
COALESCE(o.gloss_amt_usd,0) AS modified_glo_amt,
COALESCE(o.poster_amt_usd,0) AS modified_pos_amt
FROM accounts AS a
LEFT JOIN orders2 AS o
ON a.ï»¿id = o.account_id
WHERE o.total IS NULL;
