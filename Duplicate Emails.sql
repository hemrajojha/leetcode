with em as
(select Email as Email, count(*) as e_count
from Person
group by Email
having count(*) > 1)
select Email from em;