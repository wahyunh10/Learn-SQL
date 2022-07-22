/*2. Extra calculation till calculating the proportion is done*/
/*Query 2
1. First letter of the company name starts with an upper case
*/

WITH t1 AS (select count(*)
            FROM accounts)
SELECT
	CASE WHEN LEFT(name,1) = 'A' OR 
    	  LEFT(name,1) = 'E' OR 
          LEFT(name,1) = 'I' OR 
          LEFT(name,1) = 'O' OR 
          LEFT(name,1) = 'U' THEN 'Vowel' 
    ELSE 'Other'
    END AS vowel_or_other, round(count(*)*100/ (select * from t1),6) as proportion
    
FROM accounts
GROUP BY vowel_or_other;