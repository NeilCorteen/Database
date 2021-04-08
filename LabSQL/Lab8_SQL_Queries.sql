#Lab SQL 8 RANK

#Tips From Lecture
#select  title, length, rating, DENSE_RANK() over (partition by rating order by length DESC)
#from film

#select  title, length, RANK() over (order by length ASC)
#from film


use sakila;
#Inspect the database structure and find the best-fitting table to analyse for the next task.
#Answer: right click on sakila schema, schema inspetor

#Use the RANK() and the table of your choice rank films by length (filter out the rows that have nulls or 0s in length column). In your output, only select the columns title, length, and the rank.
DROP VIEW IF EXISTS rankingByLength;

CREATE VIEW rankingByLength AS
SELECT title, length,
RANK() OVER (order by length ASC) 'rank'
FROM film;



#Build on top of the previous query and rank films by length within the rating category (filter out the rows that have nulls or 0s in length column). In your output, only select the columns title, length, rating and the rank.

SELECT title, length, film.rating
#RANK() OVER (order by length ASC) 'rank'
FROM rankingByLength;

#WHERE month BETWEEN 1 AND 6 GROUP BY country, city
#HAVING sum(sold) > 10000

select title, length, rank() over (order by length DESC) as ‘Rank’
from sakila.film f
where length <> ' ' or length is not null;

select title, length, Rank() over (partition by length order by title DESC) as 'Rank'
from film
where length is not null and length <> '';







#How many films are there for each of the categories? Inspect the database structure and use appropriate join to write this query.
SELECT c.name, count(fc.film_id) as amount_films
FROM sakila.category as c 
JOIN sakila.film_category as fc 
ON c.category_id = fc.category_id
GROUP BY c.name;

#Which actor has appeared in the most films?


#Most active customer (the customer that has rented the most number of films)
#Bonus: Which is the most rented film? The answer is Bucket Brotherhood This query might require using more than one join statement. Give it a try. We will talk about queries with multiple join statements later in the lessons