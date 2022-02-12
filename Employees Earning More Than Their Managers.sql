with man as
(select Id, Name,Salary
 from Employee),
emp as 
(select Id, Name,Salary,ManagerId,
case 
    when ManagerId is null then 0
    else 1
end as m_flag
from Employee)
select e.Name as Employee
from emp e
inner join man m on m.Id=e.ManagerId
where e.Salary>m.Salary and e.m_flag=1;