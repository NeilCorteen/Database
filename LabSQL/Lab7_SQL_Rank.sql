#Lab SQL 7 Queries

use sakila;

#In the actor table, which are the actors whose last names are not repeated? For example if you would sort the data in the table actor by last_name, you would see that there is Christian Arkoyd, Kirsten Arkoyd, and Debbie Arkoyd. These three actors have the same last name. So we do not want to include this last name in our output. Last name "Astaire" is present only one time with actor "Angelina Astaire", hence we would want this in our output list.
select last_name 
from actor
group by last_name having count(*) = 1;


#Which last names appear more than once? We would use the same logic as in the previous question but this time we want to include the last names of the actors where the last name was present more than once.
select last_name 
from actor 
group by last_name 
having count(*) > 1;

#Using the rental table, find out how many rentals were processed by each employee.
select staff_id, count(rental_id) as 'total rentals'
from rental
group by staff_id;
#Answer: Staff id 1=8040 Staff id 2 8004

#Using the film table, find out how many films were released each year
select release_year, COUNT(film_id) as `No. of Films released`
from film
group by release_year;
#Answer: 1000 films released

#Using the film table, find out for each rating how many films were there.
select rating, COUNT(film_id) as 'No of ratings'
from film
group by rating;
#Answer: PG 194, G 178, NC17 210, PG13 223, R 195

#What is the average length of films for each rating? Round off the average lengths to two decimal places.
#AVG(length) 
select rating, AVG(length) as 'Avg length'
from film
group by rating;
#Answer:
#'PG','112.0052'
#'G','111.0506'
#'NC-17','113.2286'
#'PG-13','120.4439'
#'R','118.6615'

#Which kind of movies (based on rating) have an average duration of two hours or more?
select *
from film
group by rating
having AVG(length) > 0;
#Answer: dont know


