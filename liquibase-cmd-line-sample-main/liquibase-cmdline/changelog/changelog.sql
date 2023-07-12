-- liquibase formatted sql

-- changeset developer:1
create table employee (
    id int primary key,
    emp_name varchar(255)
);
-- rollback drop table employee;

-- changeset developer:2
insert into employee (id, emp_name) values (1, 'emp_name 1');
insert into employee (id,  emp_name) values (2, 'emp_name 2');

-- changeset developer:3

delete from employee where id = 1;

-- rollback insert into employee (id, emp_name) values (1, 'emp_name 1');

-- changeset developer:4
delete from employee where id = 2;
-- rollback insert into employee (id,  emp_name) values (2, 'emp_name 2');

