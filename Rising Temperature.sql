select distinct w2.id from Weather w1, Weather w2
where datediff(w2.recordDate,w1.recordDate)=1 and w1.temperature<w2.temperature
order by w2.id;