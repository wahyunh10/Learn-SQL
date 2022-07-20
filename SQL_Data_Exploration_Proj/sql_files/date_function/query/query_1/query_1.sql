/*Query 1 - Sales rose from 2013-16 and there was a sudden dip in 2017*/

SELECT EXTRACT(YEAR FROM occurred_at) AS YEAR, SUM(total_amt_usd) AS sales_in_that_year
FROM orders2
GROUP BY 1
ORDER BY 2 DESC;