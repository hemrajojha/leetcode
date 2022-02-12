select class from(
select class,count(*) from Courses
group by class
having count(*)>=5
    ) c;