select distinct num as ConsecutiveNums from
(
  select num,LEAD(num) over (order by id) as lead, LAG(num) over (order by id) as lag
    from Logs
) as con
where num=lead and num=lag;