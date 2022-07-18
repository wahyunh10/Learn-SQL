/*UNION aLL appends all data rows from the two tables inspite of repeated entries */
/* Query 1*/

SELECT *
FROM accounts AS a1
UNION ALL
SELECT * 
FROM accounts AS a2