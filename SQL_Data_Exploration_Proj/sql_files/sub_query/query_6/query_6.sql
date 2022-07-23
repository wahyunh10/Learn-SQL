/*Query 6 - What is the lifetime average amount spent in terms of total_amt_usd for only 
the companies that spent more than the average of all orders.*/
SELECT m2.aname AS account_name, (m2.total_spent/m2.num_orders) AS lif_avg_spent
FROM  (SELECT a.name AS aname, sum(o.total_amt_usd) AS total_spent, count(*) AS num_orders 
       FROM orders2 AS o
       JOIN accounts AS a
       ON a.ï»¿id = o.account_id
       GROUP BY a.name) AS m2
WHere (m2.total_spent/m2.num_orders) > (Select avg(total_amt_usd)
from orders2)
ORDER BY lif_avg_spent desc;

/*ANs*/
SELECT AVG(avg_amt)
FROM (SELECT o.account_id, AVG(o.total_amt_usd) AS avg_amt
    FROM orders2 AS o
    GROUP BY 1
    HAVING AVG(o.total_amt_usd) > (SELECT AVG(o.total_amt_usd) avg_all
                                   FROM orders2 o)) AS temp_table;


/*
Learning:
1. Take the advantage of HAVING for column wise aggregations
*/	