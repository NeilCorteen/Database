#Lab SQL Joins

#Inspect the database structure and find the best-fitting table to analyse for the next task.

#Using multiple JOIN() clauses display the store ID, city, and country of each store.

use sakila;

SELECT store_id, address.address_id, city.city, country.country
from store
join address
on address.address_id=store.address_id
join city
on city.city_id=address.city_id
join country
on country.country_id=city.country_id;


#Display the total payment amount for each store.
select staff_id, payment_id, customer_id, rental_id, amount, store.store_id#, store.store_id
from payment
join store;



#join payment
#on payment.staff_id=staff.staff_id;


SELECT staff_id, store.store_id, payment.payment_id
from staff
join store
on store.store_id=staff.store_id
join payment
on payment.staff_id=staff.staff_id;

select payment_id, staff_id, store.store_id
from payment
join store
on store.store_id=staff_id;
#join store
#on store.store_id=staff.store_id;


#What is the average film length per each category? Which category of films are the longest?


#Display the 2 most frequently rented movies in descending order.


#Display the top 5 categories with highest revenue (payment amount) in descending order.
SELECT 
name            AS categoty,
	SUM(amount)     AS `gross revenue`
FROM sakila.payment
	JOIN (sakila.rental
		JOIN (sakila.inventory
			JOIN (sakila.film_category
				JOIN sakila.category USING (category_id))
			USING (film_id))
		USING (inventory_id))
	USING (rental_id)
GROUP BY category_id
ORDER BY `gross revenue` DESC
LIMIT 5;

#Is the Academy Dinosaur movie available for rent from Store 1? If yes, display the title, store_id and inventory_id of the available copies of that movie.