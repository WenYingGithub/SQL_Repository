# Write your MySQL query statement below
SELECT D.Name AS 'Department', E.Name AS 'Employee', E.Salary
	FROM Employee E
		INNER JOIN Department D
			ON E.DepartmentId = D.Id
		INNER JOIN (
					SELECT Employee.Id
						FROM Employee 
							INNER JOIN (SELECT MAX(Salary) AS 'TopSalary', DepartmentId FROM Employee GROUP BY DepartmentId) TOPS
							ON Employee.DepartmentId = TOPS.DepartmentId AND Employee.Salary=TOPS.TopSalary
					)TEMP
			ON E.Id = TEMP.Id