# Write your MySQL query statement below
SELECT Today.Id
    FROM Weather Today, Weather Yesterday
    WHERE DATEDIFF(Today.Date, Yesterday.Date) = 1
    AND Today.Temperature > Yesterday.Temperature