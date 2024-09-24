create database CAT;
use CAT;
-- drop table cats;
CREATE TABLE cats 
  ( 
     cat_id INT AUTO_INCREMENT , 
     name   VARCHAR(100), 
     breed  VARCHAR(100), 
     age    INT, 
     PRIMARY KEY (cat_id) 
  ); 

show tables;
show columns from cats;

INSERT INTO cats(name, breed, age) 
VALUES ('Ringo', 'Tabby', 4),
       ('Cindy', 'Maine Coon', 10),
       ('Dumbledore', 'Maine Coon', 11),
       ('Egg', 'Persian', 4),
       ('Misty', 'Tabby', 13),
       ('George Michael', 'Ragdoll', 9),
       ('Jackson', 'Sphynx', 7);
       
select * from cats;
select cat_id from cats;
select name,breed from cats;

select name,age from cats where age != 4;

select cat_id, age from cats where cat_id=age;

-- update cats set name = 'Pinki' where name='Egg';

-- delete from cats ;


