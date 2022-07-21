/*Query 1 - 6912 ROWS */

SELECT account_id, total_amt_usd,
		CASE WHEN total_amt_usd >= 300 THEN 'LARGE'
        ELSE 'SMALL' 
        END AS level_of_order
FROM orders2;