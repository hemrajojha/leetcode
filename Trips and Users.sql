select Day,round(Cancellations/Total_requests,2) as 'Cancellation Rate' from (
select request_at as Day,count(*) as Total_requests, sum(case when status in ('cancelled_by_driver','cancelled_by_client') then 1 else 0 end) as Cancellations from Trips t
left join Users uc on t.client_id=uc.users_id 
left join Users ud on t.driver_id=ud.users_id
where uc.banned = 'No' and ud.banned='No'
group by request_at
    ) r
where Day between '2013-10-01' and '2013-10-03';