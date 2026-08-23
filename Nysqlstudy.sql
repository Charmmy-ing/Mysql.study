Microsoft Windows [版本 10.0.26200.9168]
(c) Microsoft Corporation。保留所有权利。

C:\Users\a'a'a>mysql -u root -m
mysql: [ERROR] mysql: unknown option '-m'.

C:\Users\a'a'a>mysql -u root -p
Enter password: ******
ERROR 1045 (28000): Access denied for user 'root'@'localhost' (using password: YES)

C:\Users\a'a'a>mysql -CanLu root -p
WARNING: --compress is deprecated and will be removed in a future version. Use --compression-algorithms instead.
mysql: [ERROR] mysql: unknown option '-a'.

C:\Users\a'a'a>mysql -canlu root -p
mysql: [ERROR] mysql: unknown option '-a'.

C:\Users\a'a'a>mysql -u root -p
Enter password: **********
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 9
Server version: 8.0.34 MySQL Community Server - GPL

Copyright (c) 2000, 2023, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> show database
    -> show databases
    -> ^Z^C
mysql> show
    -> databases
    ->
    ->
    ->
    -> show databases;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'show databases' at line 6
mysql> ^C
mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| mysql              |
| performance_schema |
| sys                |
+--------------------+
4 rows in set (0.01 sec)

mysql> create database itcast;
Query OK, 1 row affected (0.00 sec)

mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| itcast             |
| mysql              |
| performance_schema |
| sys                |
+--------------------+
5 rows in set (0.00 sec)

mysql> create database itcast
    -> create database itcast;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'create database itcast' at line 2
mysql> create database if not exists itcast;
Query OK, 1 row affected, 1 warning (0.00 sec)

mysql> shoe databases;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'shoe databases' at line 1
mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| itcast             |
| mysql              |
| performance_schema |
| sys                |
+--------------------+
5 rows in set (0.00 sec)

mysql> create database if not exists CanLu default charset utf8mb4
    -> create database if not exists CanLu default charset utf8mb4;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'create database if not exists CanLu default charset utf8mb4' at line 2
mysql> create database CanLu default charset utf8mb4;
Query OK, 1 row affected (0.00 sec)

mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| canlu              |
| information_schema |
| itcast             |
| mysql              |
| performance_schema |
| sys                |
+--------------------+
6 rows in set (0.00 sec)

mysql> drop database if exists itcast
    -> drop database if exists itcast;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'drop database if exists itcast' at line 2
mysql> drop database if exists itcast;
Query OK, 0 rows affected (0.01 sec)

mysql> show database
    -> ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'database' at line 1
mysql> show databases
    -> ;
+--------------------+
| Database           |
+--------------------+
| canlu              |
| information_schema |
| mysql              |
| performance_schema |
| sys                |
+--------------------+
5 rows in set (0.00 sec)

mysql> use canlu;
Database changed
mysql>
mysql>
mysql>
mysql>
mysql>
mysql>
mysql>
mysql>
mysql>
mysql>
mysql>
mysql>
mysql>
mysql>
mysql>
mysql>
mysql>
mysql>
mysql>
mysql>
mysql>
mysql>
mysql>
mysql>
mysql>
mysql>
mysql>
mysql>
mysql>
mysql>
mysql>
mysql>
mysql>
mysql>
mysql>
mysql>
mysql>
mysql>
mysql> select database();
+------------+
| database() |
+------------+
| canlu      |
+------------+
1 row in set (0.00 sec)

mysql> show tables;
Empty set (0.00 sec)

mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| canlu              |
| information_schema |
| mysql              |
| performance_schema |
| sys                |
+--------------------+
5 rows in set (0.00 sec)

mysql> use sys;
Database changed
mysql> show tables;
+-----------------------------------------------+
| Tables_in_sys                                 |
+-----------------------------------------------+
| host_summary                                  |
| host_summary_by_file_io                       |
| host_summary_by_file_io_type                  |
| host_summary_by_stages                        |
| host_summary_by_statement_latency             |
| host_summary_by_statement_type                |
| innodb_buffer_stats_by_schema                 |
| innodb_buffer_stats_by_table                  |
| innodb_lock_waits                             |
| io_by_thread_by_latency                       |
| io_global_by_file_by_bytes                    |
| io_global_by_file_by_latency                  |
| io_global_by_wait_by_bytes                    |
| io_global_by_wait_by_latency                  |
| latest_file_io                                |
| memory_by_host_by_current_bytes               |
| memory_by_thread_by_current_bytes             |
| memory_by_user_by_current_bytes               |
| memory_global_by_current_bytes                |
| memory_global_total                           |
| metrics                                       |
| processlist                                   |
| ps_check_lost_instrumentation                 |
| schema_auto_increment_columns                 |
| schema_index_statistics                       |
| schema_object_overview                        |
| schema_redundant_indexes                      |
| schema_table_lock_waits                       |
| schema_table_statistics                       |
| schema_table_statistics_with_buffer           |
| schema_tables_with_full_table_scans           |
| schema_unused_indexes                         |
| session                                       |
| session_ssl_status                            |
| statement_analysis                            |
| statements_with_errors_or_warnings            |
| statements_with_full_table_scans              |
| statements_with_runtimes_in_95th_percentile   |
| statements_with_sorting                       |
| statements_with_temp_tables                   |
| sys_config                                    |
| user_summary                                  |
| user_summary_by_file_io                       |
| user_summary_by_file_io_type                  |
| user_summary_by_stages                        |
| user_summary_by_statement_latency             |
| user_summary_by_statement_type                |
| version                                       |
| wait_classes_global_by_avg_latency            |
| wait_classes_global_by_latency                |
| waits_by_host_by_latency                      |
| waits_by_user_by_latency                      |
| waits_global_by_latency                       |
| x$host_summary                                |
| x$host_summary_by_file_io                     |
| x$host_summary_by_file_io_type                |
| x$host_summary_by_stages                      |
| x$host_summary_by_statement_latency           |
| x$host_summary_by_statement_type              |
| x$innodb_buffer_stats_by_schema               |
| x$innodb_buffer_stats_by_table                |
| x$innodb_lock_waits                           |
| x$io_by_thread_by_latency                     |
| x$io_global_by_file_by_bytes                  |
| x$io_global_by_file_by_latency                |
| x$io_global_by_wait_by_bytes                  |
| x$io_global_by_wait_by_latency                |
| x$latest_file_io                              |
| x$memory_by_host_by_current_bytes             |
| x$memory_by_thread_by_current_bytes           |
| x$memory_by_user_by_current_bytes             |
| x$memory_global_by_current_bytes              |
| x$memory_global_total                         |
| x$processlist                                 |
| x$ps_digest_95th_percentile_by_avg_us         |
| x$ps_digest_avg_latency_distribution          |
| x$ps_schema_table_statistics_io               |
| x$schema_flattened_keys                       |
| x$schema_index_statistics                     |
| x$schema_table_lock_waits                     |
| x$schema_table_statistics                     |
| x$schema_table_statistics_with_buffer         |
| x$schema_tables_with_full_table_scans         |
| x$session                                     |
| x$statement_analysis                          |
| x$statements_with_errors_or_warnings          |
| x$statements_with_full_table_scans            |
| x$statements_with_runtimes_in_95th_percentile |
| x$statements_with_sorting                     |
| x$statements_with_temp_tables                 |
| x$user_summary                                |
| x$user_summary_by_file_io                     |
| x$user_summary_by_file_io_type                |
| x$user_summary_by_stages                      |
| x$user_summary_by_statement_latency           |
| x$user_summary_by_statement_type              |
| x$wait_classes_global_by_avg_latency          |
| x$wait_classes_global_by_latency              |
| x$waits_by_host_by_latency                    |
| x$waits_by_user_by_latency                    |
| x$waits_global_by_latency                     |
+-----------------------------------------------+
101 rows in set (0.00 sec)

mysql> exit
Bye

C:\Users\a'a'a>mysql -u root -p
Enter password: **********
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 10
Server version: 8.0.34 MySQL Community Server - GPL

Copyright (c) 2000, 2023, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> use canlu;
Database changed
mysql> creat table tb_user(
    -> id int comment 'id',
    -> name verchar(50) comment'name',
    -> age int comment 'age',
    -> gendert verchar(50) comment 'male'
    -> )comment 'table';
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'creat table tb_user(
id int comment 'id',
name verchar(50) comment'name',
age in' at line 1
mysql> creat table tb_user(
    -> id int comment 'id',
    -> name verchar(50) comment 'name',
    -> age int comment 'age',
    -> gender verchar(50) 'gender'
    -> )comment 'table';
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'creat table tb_user(
id int comment 'id',
name verchar(50) comment 'name',
age i' at line 1
mysql> ) comment 'table';
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ') comment 'table'' at line 1
mysql> creat table tb_user(
    -> id int comment 'id',
    -> name verchar(50) comment 'name',
    -> age int comment 'age',
    -> gender verchar(50) 'gender'
    -> ) comment 'table';
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'creat table tb_user(
id int comment 'id',
name verchar(50) comment 'name',
age i' at line 1
mysql> creat table tb_user(
    -> id int comment 'id',
    -> name verchar(50) comment 'name',
    -> age int comment 'age',
    -> gender verchar(50) comment 'gender'
    -> ) comment '注册表'；
    -> ) comment '注册表';
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'creat table tb_user(
id int comment 'id',
name verchar(50) comment 'name',
age i' at line 1
mysql> creat table tb_user(
    -> id int comment 'id',
    -> name verchar(50) comment 'name',
    -> age int comment 'age',
    -> gender verchar(50) comment 'gender'
    -> ) comment '注册表';
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'creat table tb_user(
id int comment 'id',
name verchar(50) comment 'name',
age i' at line 1
mysql>   ^C
mysql> create table tb_user(
    -> id int comment 'id',
    -> name verchar(50) comment 'name',
    -> age int comment 'age',
    -> gender verchar(50) comment 'gender'
    -> ) comment '注册表';
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'verchar(50) comment 'name',
age int comment 'age',
gender verchar(50) comment 'g' at line 3
mysql> ^C
mysql> create table tb_user(
    -> id int comment 'id',
    -> name varchar(50) comment 'name',
    -> age int comment 'age',
    -> gender varchar(50) comment 'gender'
    -> ) comment '注册表';
Query OK, 0 rows affected (0.04 sec)

mysql> show table;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '' at line 1
mysql> show tables;
+-----------------+
| Tables_in_canlu |
+-----------------+
| tb_user         |
+-----------------+
1 row in set (0.00 sec)

mysql> desc tb_user
    -> ;
+--------+-------------+------+-----+---------+-------+
| Field  | Type        | Null | Key | Default | Extra |
+--------+-------------+------+-----+---------+-------+
| id     | int         | YES  |     | NULL    |       |
| name   | varchar(50) | YES  |     | NULL    |       |
| age    | int         | YES  |     | NULL    |       |
| gender | varchar(50) | YES  |     | NULL    |       |
+--------+-------------+------+-----+---------+-------+
4 rows in set (0.00 sec)

mysql> show create table tb_user;
+---------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Table   | Create Table                                                                                                                                                                                                                                                                                      |
+---------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| tb_user | CREATE TABLE `tb_user` (
  `id` int DEFAULT NULL COMMENT 'id',
  `name` varchar(50) DEFAULT NULL COMMENT 'name',
  `age` int DEFAULT NULL COMMENT 'age',
  `gender` varchar(50) DEFAULT NULL COMMENT 'gender'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='注册表' |
+---------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
1 row in set (0.03 sec)

mysql>
Microsoft Windows [版本 10.0.26200.9168]
(c) Microsoft Corporation。保留所有权利。

C:\Users\a'a'a>mysql -u root -p
Enter password: **********
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 8
Server version: 8.0.34 MySQL Community Server - GPL

Copyright (c) 2000, 2023, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| canlu              |
| information_schema |
| mysql              |
| performance_schema |
| sys                |
+--------------------+
5 rows in set (0.02 sec)

mysql> show canlu
    -> ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'canlu' at line 1
mysql> use canlu
Database changed
mysql> show canlu
    -> ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'canlu' at line 1
mysql> show table;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '' at line 1
mysql> desc table
    -> ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '' at line 1
mysql> desc tables;
ERROR 1146 (42S02): Table 'canlu.tables' doesn't exist
mysql> show tables;
+-----------------+
| Tables_in_canlu |
+-----------------+
| emp             |
| tb_user         |
+-----------------+
2 rows in set (0.01 sec)

mysql> desc emp;
+--------+------------------+------+-----+---------+-------+
| Field  | Type             | Null | Key | Default | Extra |
+--------+------------------+------+-----+---------+-------+
| id     | int unsigned     | YES  |     | NULL    |       |
| workno | varchar(10)      | YES  |     | NULL    |       |
| name   | varchar(10)      | YES  |     | NULL    |       |
| gender | char(1)          | YES  |     | NULL    |       |
| age    | tinyint unsigned | YES  |     | NULL    |       |
| idcard | char(18)         | YES  |     | NULL    |       |
| time   | date             | YES  |     | NULL    |       |
+--------+------------------+------+-----+---------+-------+
7 rows in set (0.01 sec)

mysql> alter emp add nickname varchar(20) comment "昵称";
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'emp add nickname varchar(20) comment "昵称"' at line 1
mysql> alter table emp add nickname varchar(20) comment "昵称";
Query OK, 0 rows affected (0.05 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc emp;
+----------+------------------+------+-----+---------+-------+
| Field    | Type             | Null | Key | Default | Extra |
+----------+------------------+------+-----+---------+-------+
| id       | int unsigned     | YES  |     | NULL    |       |
| workno   | varchar(10)      | YES  |     | NULL    |       |
| name     | varchar(10)      | YES  |     | NULL    |       |
| gender   | char(1)          | YES  |     | NULL    |       |
| age      | tinyint unsigned | YES  |     | NULL    |       |
| idcard   | char(18)         | YES  |     | NULL    |       |
| time     | date             | YES  |     | NULL    |       |
| nickname | varchar(20)      | YES  |     | NULL    |       |
+----------+------------------+------+-----+---------+-------+
8 rows in set (0.00 sec)

mysql> alter table emp change nickname username Varchar(20) comment "用户名"；
    -> ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '；' at line 1
mysql> alter table emp change nickname username Varchar(20) comment "用户名";
Query OK, 0 rows affected (0.01 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc emp;
+----------+------------------+------+-----+---------+-------+
| Field    | Type             | Null | Key | Default | Extra |
+----------+------------------+------+-----+---------+-------+
| id       | int unsigned     | YES  |     | NULL    |       |
| workno   | varchar(10)      | YES  |     | NULL    |       |
| name     | varchar(10)      | YES  |     | NULL    |       |
| gender   | char(1)          | YES  |     | NULL    |       |
| age      | tinyint unsigned | YES  |     | NULL    |       |
| idcard   | char(18)         | YES  |     | NULL    |       |
| time     | date             | YES  |     | NULL    |       |
| username | varchar(20)      | YES  |     | NULL    |       |
+----------+------------------+------+-----+---------+-------+
8 rows in set (0.00 sec)

mysql> alter table emp change nickname username Varchar(30) comment "用户名";
ERROR 1054 (42S22): Unknown column 'nickname' in 'emp'
mysql> alter table emp drop username;
Query OK, 0 rows affected (0.01 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc emp
    -> ;
+--------+------------------+------+-----+---------+-------+
| Field  | Type             | Null | Key | Default | Extra |
+--------+------------------+------+-----+---------+-------+
| id     | int unsigned     | YES  |     | NULL    |       |
| workno | varchar(10)      | YES  |     | NULL    |       |
| name   | varchar(10)      | YES  |     | NULL    |       |
| gender | char(1)          | YES  |     | NULL    |       |
| age    | tinyint unsigned | YES  |     | NULL    |       |
| idcard | char(18)         | YES  |     | NULL    |       |
| time   | date             | YES  |     | NULL    |       |
+--------+------------------+------+-----+---------+-------+
7 rows in set (0.00 sec)

mysql> alter table emp rename to employee;
Query OK, 0 rows affected (0.03 sec)

mysql> desc emplyee;
ERROR 1146 (42S02): Table 'canlu.emplyee' doesn't exist
mysql> desc employee;
+--------+------------------+------+-----+---------+-------+
| Field  | Type             | Null | Key | Default | Extra |
+--------+------------------+------+-----+---------+-------+
| id     | int unsigned     | YES  |     | NULL    |       |
| workno | varchar(10)      | YES  |     | NULL    |       |
| name   | varchar(10)      | YES  |     | NULL    |       |
| gender | char(1)          | YES  |     | NULL    |       |
| age    | tinyint unsigned | YES  |     | NULL    |       |
| idcard | char(18)         | YES  |     | NULL    |       |
| time   | date             | YES  |     | NULL    |       |
+--------+------------------+------+-----+---------+-------+
7 rows in set (0.00 sec)

mysql> show table;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '' at line 1
mysql> show tables;
+-----------------+
| Tables_in_canlu |
+-----------------+
| employee        |
| tb_user         |
+-----------------+
2 rows in set (0.00 sec)

mysql> drop table tb_user;
Query OK, 0 rows affected (0.03 sec)

mysql> show tables;
+-----------------+
| Tables_in_canlu |
+-----------------+
| employee        |
+-----------------+
1 row in set (0.00 sec)

mysql> truncate table emploee;
ERROR 1146 (42S02): Table 'canlu.emploee' doesn't exist
mysql> truncate table employee;
Query OK, 0 rows affected (0.04 sec)

mysql> show tables;
+-----------------+
| Tables_in_canlu |
+-----------------+
| employee        |
+-----------------+
1 row in set (0.00 sec)

mysql>