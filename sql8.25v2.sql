create user 'libai'@'localhost' identified by '123456';
create user 'lulu'@'%' identified by '123456';
alter user 'lulu'@'%' identified  with mysql_native_password by '12324';
drop user'lulu'@'%';
show grants for 'libai'@'localhost';
grant all on canlu.* to 'libai'@'localhost';
show grants for 'libai'@'localhost';
revoke all on canlu.*from 'libai'@'localhost';
show grants for 'libai'@'localhost';