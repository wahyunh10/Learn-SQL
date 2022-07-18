/*Query - Ranking Total Paper Ordered by Account: */
-- # Limited to 100 rows to avoid scrolling. Total 6912 rows.

SELECT id, account_id, total,
RANK() OVER(PARTITION BY account_id ORDER BY total desc) total_rank
FROM orders2
LIMIT 100;