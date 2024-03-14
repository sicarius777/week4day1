SELECT *
from actor;

select first_name, last_name from actor;

select first_name, last_name
from actor
where first_name = 'Nick';

select first_name, last_name
from actor
where first_name = 'Nick' and last_name = 'Wahlberg';

-- Question 1 wahlber there is only 1

select * from payment;

select payment_id, amount
from payment
where amount >= 7.99
order by amount;

select payment_id, amount
from payment
where amount < 2.99
order by amount DESC;

select payment_id, amount
from payment
where amount between 3.99 and 5.99
order by amount;

-- Question 2 answer 123

select sum(amount)
from payment;

--select film_id, COUNT(*) AS film_count
--FROM inventory
--GROUP BY film_id
--ORDER BY film_count DESC
--LIMIT 1;

-- Question 3 Garden island with film id 350

select last_name
from customer
where last_name = 'William';

-- Question 4 i know there is at least 1 but i cant get it to work

SELECT staff_id, COUNT(rental_id) AS num_rentals_sold
FROM rental
GROUP BY staff_id
ORDER BY num_rentals_sold DESC
LIMIT 1;

-- Question 5 it looks like Mike with 8,040 im also getting Jon in value 2 but not sure why.

SELECT COUNT(DISTINCT district) AS num_districts
FROM address;


-- Question 6 is 378

SELECT film_id, COUNT(actor_id) AS num_actors
FROM film_actor
GROUP BY film_id
ORDER BY num_actors DESC
LIMIT 1;

-- Question 7 if im doing this correctly the film is id 508 which is Lamb Cincinatti

SELECT COUNT(*) AS num_customers
FROM customer
WHERE store_id = 1 AND last_name LIKE '%es';

-- Question 8 is 13

SELECT amount, COUNT(rental_id) AS num_rentals
FROM payment
WHERE customer_id BETWEEN 380 AND 430
GROUP BY amount
HAVING COUNT(rental_id) > 250;

-- Question 9 i got stuck on for a sec but its i have 3 amount and num_rentals totals are 290, 281, 269

SELECT COUNT(DISTINCT rating) AS num_rating_categories
FROM film;

-- Question 10 is a two parter huh first its 5

SELECT rating, COUNT(*) AS num_movies
FROM film
GROUP BY rating
ORDER BY num_movies DESC
LIMIT 1;

-- second part is 223



