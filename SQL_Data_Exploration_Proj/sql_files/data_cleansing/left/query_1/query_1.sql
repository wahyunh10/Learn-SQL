/*QUery 1
1. TO check within a set WHEN IN ('0','1','2') can be used rather than using multiple ORs */

WITH t1 AS (select count(*)
            FROM accounts)
SELECT
	CASE WHEN LEFT(name,1) = '0' OR
	          LEFT(name,1) = '1' OR
	          LEFT(name,1) = '2' OR 
	          LEFT(name,1) = '3' OR 
	          LEFT(name,1) = '4' OR
	          LEFT(name,1) = '5' OR
	          LEFT(name,1) = '6' OR
	          LEFT(name,1) = '7' OR
	          LEFT(name,1) = '8' OR
	          LEFT(name,1) = '9' THEN 'Number' 
    ELSE 'Letter'
    END AS name_starts_with, count(*)*100/(select * from t1) proportion
    
FROM accounts
GROUP BY name_starts_with;