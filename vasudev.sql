show databases;
use sys;
show tables;
create database GL;
use GL;
create table student
(rollno int,
name varchar(10),
dept char(10),
score float,
city varchar(12)
);

alter table student add column date_of_Join date;
desc student;
alter table student add column id int first;
desc student;
alter table student add column age tinyint after name;
alter table student drop column id;
desc student;
alter table student modify column score int;
desc student;
alter table student modify column name varchar(15);
desc student;
alter table student rename column dept to department;
describe student;
alter table student change score marks float;
describe student;
alter table student modify column
age tinyint after city;
rename table student to student1;

show databases;
create table employees(
emp_id int,
emp_name varchar(15),
department char(10),
salary int,
age smallint,
city multilinestring);
desc employees;

alter table employees modify city varchar(10);
describe employees;

alter table employees add column DOJ date after salary;
describe employees;

alter table employees modify department char(10);
describe employees;

alter table employees add column state varchar(10);
alter table employees drop column city , drop column state;

alter table employees change salary sal float;
describe employees;
insert into employees values
(10,'Vasudev','CSE',35000,'2022-09-12',25);
insert into employees values
(9,'Sanjan','ECE',35000,'2022-09-5',22),
(8,'Vaishnavi','ECE',35000,'2022-10-26',23);
describe employees;
select * from employees;
select * from employees where age=22;


