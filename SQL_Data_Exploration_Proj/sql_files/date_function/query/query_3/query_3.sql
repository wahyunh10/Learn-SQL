/*Query 3 - 2016. All the orders are not evenly represented as the numbers are of different orders of magnitude*/

SELECT EXTRACT(YEAR FROM occurred_at) AS year, COUNT(*) AS order_in_that_year
FROM orders2
GROUP BY 1
ORDER BY 2 DESC;