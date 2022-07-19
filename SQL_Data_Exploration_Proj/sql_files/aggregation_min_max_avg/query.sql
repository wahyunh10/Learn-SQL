/* 1. When did the first order take place?*/
# By date the question didn't mean the substring within the each cell*/

SELECT MIN(occurred_at)
FROM orders2;

/*2. When did the most recent web event take place?*/
SELECT MAX(occurred_at)
FROM web_events;

/*3. Find out the avg. quantity and avg. sales of standard, gloss, poster paper types?*/
SELECT 
	AVG(standard_amt_usd) AS standard_avg_sales,
    AVG(gloss_amt_usd) AS gloss_avg_sales,
	AVG(poster_amt_usd) AS poster_avg_sales,
    SUM(standard_qty)/COUNT(standard_qty) AS standard_avg_qty,
	AVG(standard_qty) AS standard_avg_qty_1,
	SUM(gloss_qty)/COUNT(gloss_qty) AS gloss_avg_qty,
	SUM(poster_qty)/COUNT(poster_qty) AS poster_avg_qty
FROM orders2;

/* 4. Calculate the median total_amt_usd of all the orders?*/
SELECT *
FROM (SELECT total_amt_usd
      FROM orders2
      ORDER BY total_amt_usd
      LIMIT 3457) AS Table1
ORDER BY total_amt_usd DESC
LIMIT 2;