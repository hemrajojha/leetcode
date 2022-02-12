select department, employee, salary from (
    select d.name as department, e.name as employee,e.salary as salary,
    rank() over (partition by d.id order by e.salary desc) as ord
    from Employee e
    inner join Department d on d.id=e.departmentId
) dep 
where dep.ord=1;