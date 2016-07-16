CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
  RETURN (
      # Write your MySQL query statement below.
            
		 SELECT DISTINCT Temp.Salary 
			FROM
				 (
					SELECT E.Salary as Salary, (
												 SELECT COUNT(DISTINCT i.Salary) + 1 
													FROM Employee i 
														WHERE i.Salary > E.Salary
												) AS RankNumber
					FROM Employee E
				 ) Temp
			WHERE Temp.RankNumber = N
						
  );
END