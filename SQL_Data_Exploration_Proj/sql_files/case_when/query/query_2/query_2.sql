/*Query 2 - 4072,1570,1270
Total numer of orders - categories was asked*/

SELECT 
	CASE WHEN total_amt_usd >= 2000 THEN 'Atleast 2000'
		 WHEN total_amt_usd < 2000 AND total_amt_usd >= 1000 THEN 'Between 1000 and 2000'
         WHEN total_amt_usd < 1000 THEN 'Less than 1000'
	END AS level_of_order, COUNT(*)
FROM orders2
GROUP BY level_of_order;