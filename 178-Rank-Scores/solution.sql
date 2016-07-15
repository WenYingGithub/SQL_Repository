# Write your MySQL query statement below

SELECT Score, @rank := @rank + (@prev <> (@prev := Score)) AS 'Rank'
FROM Scores, (SELECT @rank := 0, @prev := -1) init
ORDER BY Score DESC