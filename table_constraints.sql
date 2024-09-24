use Employee; -- to select the default database 
drop table department;
create table department ( 	
	dept_id int not null  primary key auto_increment,     
	dept_name varchar(50) default 'blank'
);
insert into department (dept_name) values ('IT');
insert into department (dept_id,dept_name) values (2,'HR'),(5,'System');
insert into department (dept_id,dept_name) values (3,'Sales');
insert into department (dept_name) values ('Marketing');
show columns from department;
select * from department;departments