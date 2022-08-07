USE learn_sql;

CREATE TABLE icc_world_cup
( 
Team_1 VARCHAR(20),
Team_2 VARCHAR(20),
Winner VARCHAR(20)
);

INSERT INTO icc_world_cup 
VALUES ("Indonesia", "USA", "Indonesia"),
	   ("USA", "Australia", "Australia"),
	   ("France","England","England"),
       ("England","Germany","Germany"),
       ("Australia","Indonesia","Indonesia");
       
SELECT * FROM icc_world_cup;

SELECT Team_Name, COUNT(1) AS No_Of_Matches_Played, SUM(win_flag) AS No_Of_Matches_Won, COUNT(1) - SUM(win_flag) AS No_Of_Losses
FROM
(
SELECT Team_1 AS Team_Name,
	CASE WHEN team_1=winner THEN 1 ELSE 0 END AS win_flag
FROM icc_world_cup
UNION ALL
SELECT Team_2 AS Team_Name,
	CASE WHEN team_2=winner THEN 1 ELSE 0 END AS win_flag
FROM icc_world_cup) AS A
GROUP BY Team_Name
ORDER BY No_Of_Matches_Won DESC;
