
create database datatypes;
use datatypes;
drop table number;
create table number(
whole_number int,
decimal_num decimal(6,3),
float_num float,
double_num double,
rec_created_on varchar(100)
);

show tables;
show columns from number;

insert into number (whole_number,decimal_num,float_num,double_num,rec_created_on) values(100,110.23,1.1234567,9.12345678912345454645467,'11/11/2024');
select * from number;
create table login_data(
name varchar(50),
dept char(4),
login_date DATE,
login_time TIME,
login datetime
);

insert into login_data (name,dept,login_date,login_time,login) 
values ('Sachin', 'IT','2024-08-1','12:00:00','2024-08-1 12:00:00');
insert into login_data (name,dept,login_date,login_time,login) 
values ('Radha', 'IT','2023-08-1','12:00:00','2024-08-1 12:00:00');
select * from login_data;

select curdate();
select current_date();
select curtime();
select now();
insert into login_data (name,dept,login_date,login_time,login) 
values ('Pranal', 'BIO','2024-08-1','09:02:05','2024-08-1 09:02:05'),
('Mangesh', 'ENTC','2024-08-15','8:00:00','2024-08-15 8:00:00')
;
select adddate(login_date,interval 31 year) from login_data;
select name, timediff((select login_time from login_data where name = 'Shraddha'), (select login_time from login_data where name = 'Pranal')) from login_data group by name;


-- #Assignment
-- create a table with following columns
-- 1. Name
-- 2. login_time  datetime
-- 3. logout_time 

-- display login duration of each person

-- #Output: 0 days 2 hours 15 minutes 0 seconds  concat
create table log_info(
name varchar(100),
login datetime,
logout datetime
);

insert into log_info(name,login,logout) 
values("Sachin",'2024-08-22 08:09:11','2024-08-24 14:44:33'),
		("Ramesh",'2024-09-21 08:09:11',now());
        
select * from log_info;

select name ,
concat_ws(
' ',
datediff(logout,login),
"Days",
hour( timediff(logout,login)) % (datediff(logout,login)*24),
"Hours",
minute( timediff(logout,login)),
"Minutes"
)
as Duration 
from log_info;








