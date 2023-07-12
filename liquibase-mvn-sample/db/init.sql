use information_schema;

create user 'developer'@'%' identified by 'tester123';
create database company;
grant all on company.* to 'developer'@'%';
use company;
create table employee( id int not null auto_increment, ename varchar(100), primary key(id));
insert into employee (ename) values('john');
insert into employee (ename) values('joe');
insert into employee (ename) values('jessy');

