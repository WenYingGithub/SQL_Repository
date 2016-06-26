# Write your MySQL query statement below
SELECT Emp.Name AS Employee
    FROM Employee Emp, Employee Manager
    WHERE Manager.Salary < Emp.Salary AND Emp.ManagerId = Manager.Id
        