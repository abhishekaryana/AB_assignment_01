-- 1 Identify the primary keys and foreign keys in mavenmovies db Discuss the differences.


SELECT TABLE_NAME, COLUMN_NAME
FROM information_schema.KEY_COLUMN_USAGE
WHERE CONSTRAINT_NAME = 'PRIMARY'
  AND TABLE_SCHEMA = 'mavenmovies';
  
  SELECT 
  CONSTRAINT_NAME,
  TABLE_NAME,
  COLUMN_NAME,
  REFERENCED_TABLE_NAME,
  REFERENCED_COLUMN_NAME
  FROM
  information_schema.KEY_COLUMN_USAGE
  WHERE
  CONSTRAINT_NAME != 'PRIMARY'
  AND REFERENCED_TABLE_NAME IS NOT NULL
  AND TABLE_SCHEMA = 'mavenmovies';


-- Primary key: Uniquely identifies records within a table, it can hold unique and not null values
-- foreign key: Establish relationships between tsblrd by referecing the primary key of another table, it can contain null valuies also
 
select table_name, column_name from information_schema key_column_usage where constraint_name = 'primary'
and table_schema ='mavemovies';
show tables;


use mavenmovies;

-- 2 list all detail of actors 
select * from actor;

-- 3 List all customer information from DB. 
select * from customer;

-- 4 List different countries. 
select distinct country from country;

-- 5 Display all active customers.
select * from customer where active = 1; 

-- 6 List of all rental IDs for customer with ID 1.
select  rental_id, customer_id from rental where customer_id = 1;

-- 7 Display all the films whose rental duration is greater than 5 . 
select film_id, title as film_name, rental_duration from film 
where rental_duration > 5;

-- 8 List the total number of films whose replacement cost is greater than $15 and less than $20. 
select  count(title) as 'number of films' 
from film 
where replacement_cost >15 and replacement_cost <20;

-- 9 Find the number of films whose rental rate is less than $1.
select * from film;
select count(title) as 'number of films'
from film 
where rental_rate < 1; 

-- 10 Display the count of unique first names of actors.
select COUNT(DISTINCT first_name) from actor;

-- 11 Display the first 10 records from the customer table .
select *  from customer limit 10;

-- 12 Display the first 3 records from the customer table whose first name starts with ‘b’.
select * from film;
select first_name from customer
 where first_name like 'b%' limit 3;

-- 13 Display the names of the first 5 movies which are rated as ‘G’.
select title, rating 
from film
where rating  = 'g'limit 5;

-- 14 Find all customers whose first name starts with "a". 
select first_name from customer 
where first_name like 'a%';

-- 15 Find all customers whose first name ends with "a". 
select first_name from customer 
where first_name like "%a";

-- 16 Display the list of first 4 cities which start and end with ‘a’ . 
select city from city where city like 'a%a';

-- 17 Find all customers whose first name have "NI" in any position.
select first_name 
from customer 
where first_name like '%NI%';

-- 18 Find all customers whose first name have "r" in the second position .
select first_name 
from customer  
where first_name like '_r%';

-- 19 Find all customers whose first name starts with "a" and are at least 5 characters in length.
select first_name 
from customer 
where first_name like 'a%' and lenght(fisrt_name)>=5;

-- 20 Find all customers whose first name starts with "a" and ends with "o".
select fisrt_name
from customer 
where first_name like "a%o";------

-- 21 Get the films with pg and pg-13 rating using IN operator
select title,rating 
from film 
where rating in ("pg","pg-13");

-- 22 Get the films with length between 50 to 100 using between operator.

select title, length
from film
where length between 50 and 100;

-- 23 Get the top 50 actors using limit operator
 
select * from actor limit 50;

-- 24 Get the distinct film ids from inventory table.

select distinct (film_id) from inventory;


