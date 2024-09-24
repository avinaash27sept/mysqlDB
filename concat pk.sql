use books_db;
select* from books;
select concat("mr.",author_fname,"  ",author_lname) as name from books;

select concat_ws("  ","mr.",author_fname,author_lname,"-", title)as name from books;
select * from books;
select substring(title,7) from books;

 select reverse(ucase('does my cat look at me with such hatred?'));
 select concat('-','my',' ','cat',' ','looks',' ','big!','..');
 
 select replace(title," ","->") from books;
 select author_lname as forward,reverse(author_lname) as backward  from books;
 select upper(concat(author_fname," ",author_lname)) as "fullname in caps" from books;
 select concat(title," ","was released in"," ",released_year)  from books;
 select (title),char_length(title)as count from books;
 select concat(substring(title,1,10),"....") as "short title ",
 concat(author_lname,",",author_fname) as author,
 concat(stock_quantity," ","in stock") as quantity
 
 
 from books;