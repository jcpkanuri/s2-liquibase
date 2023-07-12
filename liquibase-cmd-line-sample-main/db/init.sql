use information_schema;

create user 'developer'@'%' identified by 'tester123';
create database company;
grant all on company.* to 'developer'@'%';

