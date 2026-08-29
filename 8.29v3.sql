select concat('Hello','World');
select lower('Hello World');
select  upper('Hello World');
select trim('   Hello  ');
SELECT LPAD('hello',10,'-');
select  rpad('hi',10,'-');
select substring('HELLO',1,9);
# update employee set name=lpad(name,6,'-');
# desc employee;
# select id from employee;
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
# select name ,(case id when 1 then'one'else 'two'end)from employee;
create table user(
    id tinyint primary key auto_increment comment '编号',
    name varchar(5) not null unique comment '名字',
    age tinyint check ( age>0&&age<150 ) comment '年龄',
    status char(1) default '1' comment '账户状态'
) comment'平台用户表';
desc user;
insert into user (name,age,status) values ('om',49,'1'),('YO',19,'1');
select * from user;
# alter table employee add constraint fk_employee_dept_id foreign key (dept_id) references  dept(id) on update cascade on delete cascade ;
# alter table employee drop foreign key fk_employee_dept_id;
# alter table employee add constraint fk_employee_dept_id foreign key (dept_id) references  dept(id) on update cascade on delete set null ;
create table student
(
    id   int auto_increment primary key comment '主键id',
    name varchar(10) comment '名字',
    no   varchar(10) comment '学号'
) comment '学生表';
desc student;
insert into student values(null,'canlu','212125221'),(null,'keli','212125459'),(null,'zhengzhou','211952488'),(null,'lepinli','212008784');
select * from student;
create table course(
    id int primary key auto_increment comment '主键id',
    name varchar(10) comment '课程名称'
) comment '课程表';
select * from course;
insert  into course values(null,'java'),(null,'python'),(null,'mysql'),(null,'golang');
select * from course;
create table student_course(
    id int auto_increment primary key comment '主键',
    studentid int not null comment '学生id',
    courseid int not null comment  '课程id',
    constraint fk_courseid foreign key (courseid) references course(id) ,
    constraint fk_studentid foreign key (studentid) references student(id)
) comment '中间表';
select *from student_course;
insert into student_course values (null,1,1),(null,1,2),(null,2,1),(null,3,3);
drop table student;
select * from student,student_course where student.id=student_course.id;
Select s.name,sc.id from student_course sc left join student s  on sc.id=s.id;
Select s.name,sc.id from student_course sc right join student s  on sc.id=s.id;
select * from student a join student b on a.id=b.id;
select * from student where id>=2;
union;
select *from student where id like '%1';