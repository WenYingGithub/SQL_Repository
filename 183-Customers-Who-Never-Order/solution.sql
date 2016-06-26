# Write your MySQL query statement below
SELECT C.Name AS Customers
    FROM Customers C
    LEFT OUTER JOIN Orders O
        ON C.Id = O.CustomerId
    WHERE O. Id IS NULL
    
        