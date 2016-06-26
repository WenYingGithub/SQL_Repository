# Write your MySQL query statement below
SELECT Emp.Name AS Employee
    FROM Employee Emp
    JOIN Employee Manager
        ON Emp.ManagerId = Manager.Id
    WHERE Manager.Salary < Emp.Salary
        