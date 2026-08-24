insert into employee(id, workno, name, gender, age, idcard, time) VALUES (1,'1','canlu','男',19,'123321321ddd123132','2026.8.24');

select * from employee;
insert into employee values (2,'2','liuyu','男',19,'123321321ddb123132','2026.8.24');
select *from employee;
update employee set name = 'canlulu',gender='女'where id=1;
select * from employee;
update employee set name='canlu',id=2;

select * from employee;
delete from employee where workno=2;
select * from employee;
update employee set name=null;
select * from employee;
delete from employee;
select * from employee;