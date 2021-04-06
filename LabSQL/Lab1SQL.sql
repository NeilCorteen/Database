use sakila;
#Select one column from a table. Get film titles.
SELECT title from film;

#Select one column from a table and alias it. Get unique list of film languages under the alias language. Note that we are not asking you to obtain the language per each film, but this is a good time to think about how you might get that information in the future.
SELECT 'description' as des from film;
SELECT language_id as languageId from film;

SELECT film.title as Film, language.name as Language FROM film 
LEFT JOIN language ON film.language_id = language.language_id
UNION
SELECT film.title, language.name FROM film 
RIGHT JOIN language ON film.language_id = language.language_id;

#Using the select statements and reviewing how many records are returned, can you find out how many stores and staff does the company have? Can you return a list of employee first names only?
SELECT COUNT(store_id) FROM store;
#Answer: 2 stores
SELECT COUNT(staff_id) FROM staff;
#Answer: 2 staff
SELECT first_name from staff;
# Answer: Mike and John