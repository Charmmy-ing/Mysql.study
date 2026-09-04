/*
 存储引擎
 */
  show create table user;
show engines;
create  table my_myisam
(
    id int

) engine=MyISAM;
create table memory(
    name varchar(10)
) engine=memory;
show create table memory;
create table InnoDB(
    id int,
    name varchar(10)
) engine=innodb;
show create table innodb;
/*索引
  */

