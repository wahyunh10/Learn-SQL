/*Query 4 - December. All the orders in different months are evenly represented*/
SELECT EXTRACT(MONTH FROM occurred_at) AS month, count(*) orders_in_that_month
FROM orders2
GROUP BY 1
ORDER BY 2 DESC;
