CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
DECLARE @Counter INT 
SET @Counter=1
WHILE ( @Counter <= N)
  RETURN (
      # Write your MySQL query statement below.
      select max(Salary) as 'getNthHighestSalary('||@Counter||')' from Employee
      where Salary< (select max(Salary) from Employee)
  );
END