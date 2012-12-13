insert into mysql.user(Host,User,Password) values("localhost","zhgy",password("zhgy"));
flush privileges;
create database zhgydb;
grant all privileges on zhgydb.* to 'zhgy'@'%' identified by 'zhgy' with grant option;
flush privileges;
