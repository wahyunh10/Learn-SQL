/*Query 2 - December it is. X All months are evenly represented in the dataset X. 2013 and 2017 have only one month of sales data*/

SELECT EXTRACT(MONTH FROM occurred_at) AS Month, SUM(total_amt_usd) AS sales_in_that_month
FROM orders2
GROUP BY 1
ORDER BY 2 DESC;