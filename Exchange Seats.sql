select (case when mod(id,2)=0 then id-1
            when id=(select count(*) from seat) then id
            else id+1
            end) id, student
from seat
order by id;