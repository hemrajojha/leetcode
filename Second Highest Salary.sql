select Salary as SecondHighestSalary
from Employee 
qualify row_number() over (order by Salary)=2;
