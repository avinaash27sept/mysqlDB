use books_db;
select * from books;

select count(distinct author_fname)  from books ;

select count(*) from books where title like '%the';

SELECT author_lname,count(*) FROM books
GROUP BY author_lname;
select max(pages) from books;
select  title, pages from books where pages = (select min(pages) from books); 

select title, pages from books order by pages desc limit 5;


select * from books order by released_year desc;

select concat(author_lname,' ',author_fname) as Author, min(released_year) as release_year from books group by author_lname,author_fname;

select concat(author_lname,' ',author_fname) as Author, max(pages) as MaxPages from books group by author_lname,author_fname;
select sum(pages) from books;

select concat(author_lname,' ',author_fname) as Author, sum(pages) as TotalPages from books group by author_lname,author_fname;

-- Calculate the average stock quantity for books released in the same year

select * from books;

select released_year,round(avg(stock_quantity)) from books group by released_year order by released_year;

use employees;
select * from salaries;
-- find the top 5 employees who have highest salary from salary table
-- find the employee who have the lowest salary from salary table
-- count number of male and female employees from employees table
-- count the number of employess joined per year from employees table
-- count the number of employees joined in the leap year
-- count employees who have joined on same date 






