select concat('Hello','World');
select lower('Hello World');
select  upper('Hello World');
select trim('   Hello  ');
SELECT LPAD('hello',10,'-');
select  rpad('hi',10,'-');
select substring('HELLO',1,9);
update employee set name=lpad(name,6,'-');
desc employee;
select id from employee;
select ceil(1.8);
select floor(1.99);
select mod(4,3);
select rand();
select round(5.555555,2);
select lpad(round(rand()*1000000,0),6,'0');
select curdate();
select  curtime();
select now();
select year(now());
select  month(now());
select day(now());
select date_add(now(),interval 70 day );
select datediff('2027-10-1','2001-9-1');
select if(true,'ok','no');
select if(false,'ok','no');
select ifnull('ok','no');
select  ifnull(null,'no');
select name ,(case id when 1 then'one'else 'two'end)from employee;
create table user(
    id tinyint primary key auto_increment comment '编号',
    name varchar(5) not null unique comment '名字',
    age tinyint check ( age>0&&age<150 ) comment '年龄',
    status char(1) default '1' comment '账户状态'
) comment'平台用户表';
desc user;
insert into user (name,age,status) values ('om',49,'1'),('YO',19,'1');
select * from user;
alter table employee add constraint fk_employee_dept_id foreign key (dept_id) references  dept(id) on update cascade on delete cascade ;
alter table employee drop foreign key fk_employee_dept_id;
alter table employee add constraint fk_employee_dept_id foreign key (dept_id) references  dept(id) on update cascade on delete set null ;
