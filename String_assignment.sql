use books_db;
select * from books;
SELECT
 replace(
  CONCAT_ws(" ",'I',  'like', 'cats'),
  ' ',
  '-'
  );
  
select replace(title,' ', '->') as title from books;

select author_lname as forwards,  reverse(author_lname) as backwards from books;

select upper(concat(author_fname," ",author_lname)) as 'Full Name in Caps' from books