#for Lab | SQL Lesson 2.6

use sakila;

#Get the unique release years.
select release_year as 'release year'
from film;

#Get all films with ARMAGEDDON in the title.
select title
from film
where title like '%ARMAGEDDON%';
#Answer: six films

#Get all films which title ends with APOLLO.
select title
from film
where title like '%APOLLO';
#Answer: five films

#Get 10 the longest films.
SELECT title, length
FROM film
order by length DESC
limit 10;

#How many films include Behind the Scenes content?
select COUNT(*) as 'Number of films include Behind the Scenes content'
from film
where special_features like '%Behind the Scenes%';
# Answer: 538 films

#Drop column picture from staff.
ALTER TABLE staff
DROP picture;
DESCRIBE staff;
# Answer: ????

#A new person is hired to help Jon. Her name is TAMMY SANDERS, and she is a customer. Update the database accordingly.
select

#Add a rental for movie "Academy Dinosaur" by the customer "Charlotte Hunter" from employee Mike Hillyer at Store 1. You can use current date for the rental_date column in the rental table. Hint: Check the columns in the table rental and see what information you would need to add there. You can query those pieces of information in other tables. For eg., you would notice that you need customer_id information as well. To get that you can use the following query:
#select customer_id from sakila.customer
#where first_name = 'CHARLOTTE' and last_name = 'HUNTER';
#Use similar method to get inventory_id, film_id, and staff_id.




