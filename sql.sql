select *from employee;
select count(age) from employee;
select gender, count(*) from employee group by gender;
select gender,avg(age) from employee group by gender;
select gender,count(*) from employee where id=1 group by gender having avg(age)>1 ;
select *from employee order by id asc;
select id from employee order by id desc;
select *from employee limit 0,2;
select  *from employee limit 2,2;