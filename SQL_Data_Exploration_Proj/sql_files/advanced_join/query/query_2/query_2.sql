/*Query 2*/
-- Add a WHERE clause to each of the tables that you unioned in the query above, filtering the first table where name equals Walmart and filtering the second table where name equals Disney
SELECT *
FROM accounts AS a1
WHERE name = 'Walmart'

UNION 

SELECT *
FROM accounts AS a2
WHERE name = 'Disney';