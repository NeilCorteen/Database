#dataV3_lesson_2.5_lab
#Select all the actors with the first name ‘Scarlett’.
#How many films (movies) are available for rent and how many films have been rented?
#What are the shortest and longest movie duration? Name the values max_duration and min_duration.
#What's the average movie duration expressed in format (hours, minutes)?
#How many distinct (different) actors' last names are there?
#Since how many days has the company been operating (check DATEDIFF() function)?
#Show rental info with additional columns month and weekday. Get 20 results.
#Add an additional column day_type with values 'weekend' and 'workday' depending on the rental day of the week.
#How many rentals were in the last month of activity?

use sakila;

select first_name
FROM actor
WHERE first_name = "Scarlett";
# Answer: 2

select COUNT(film_id) FROM film;
#Answer: 1000 Films available for rent

select COUNT(return_date) FROM rental;
#Answer 15861 have been rented

select MIN(length) FROM film;
#Answer: The shortest film is 46 minutes

select MAX(length) FROM film;
#Answer: The longest film is 185 minutes

select
floor(AVG(f.length)/60) as hours,
floor(AVG(f.length)%60) as min
FROM film f;
#Answer: The average film length is 1hr 55 minutes

select count(distinct last_name) from actor;
# Answer: There are 121 distinct last names

select DATEDIFF(CURDATE(), rental_date) as days_open
from rental;
#The company has been operating for 5796 days

#????
#select rental_id, rental_date, return_date,
#month weekday
#from inventory join store using (store_id) join film using (film_id)
#limit 20




