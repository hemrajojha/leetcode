with cus as
(
(select Id, Name as Customers
from Customers)
except
(select c.Id as Id, Name as Customers 
from Customers c
inner join Orders o on o.CustomerId = c.Id)
)
select Customers from cus
;