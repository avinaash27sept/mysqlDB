create database Employee; -- creates a new database

-- drop database Employee
use Employee; -- to select the default database 
create table department ( 	
	dept_id int ,     
	dept_name varchar(50) 
);
-- Table creation syntax
create table employee_info (
	emp_id int,
    dept_id int,
    emp_name varchar(50),
    emp_age int    
);
show tables; -- displays list of tables
show columns from  employee_info; -- displays structure of table 

insert into department (dept_name) 
values("HR");

select * from department;

select cat_id as id,name from cats;

-- drop table employee