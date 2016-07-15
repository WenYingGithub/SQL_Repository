# Write your MySQL query statement below

SELECT DISTINCT A.Num AS 'ConsecutiveNums'
    FROM Logs A
        INNER JOIN Logs B ON A.Id = B.Id + 1 AND A.Num = B.Num
        INNER JOIN Logs C ON A.Id = C.Id + 2 AND A.Num = C.Num
