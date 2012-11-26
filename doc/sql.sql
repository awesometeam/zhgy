insert into mysql.user(Host,User,Password) values("localhost","zhgy",password("zhgy"));
flush privileges;
create database zhgyDB;
grant all privileges on zhgyDB.* to 'zhgy'@'%' identified by 'zhgy' with grant option;
flush privileges;
