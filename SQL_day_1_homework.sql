-- 1. How many actors are there with the last name ‘Wahlberg’?

-- Answer 1) 2 actors
select first_name, last_name
from actor
where last_name like 'Wahlberg'

-- 2. How many payments were made between $3.99 and $5.99?

-- Answer 2) 3 payments
SELECT COUNT(amount)
FROM payment
WHERE amount between 3.99 and 5.99;

-- 3. What film does the store have the most of? (search in inventory)

-- Answer 3) My query resulted in 72 films with inventory equal to 8 which was the highest number.
select film_id, count(film_id)
from inventory
group by film_id 
order by count desc

-- 4. How many customers have the last name ‘William’?

-- Answer 4) 0 customers
select last_name, count(customer_id)
from customer
where last_name like 'William'
group by last_name

-- 5. What store employee (get the id) sold the most rentals?

-- Answer 5) Mike, staff_id: 1
select staff_id, count(staff_id)
from rental
group by staff_id
order by count desc

-- 6. How many different district names are there?

-- Answer 6) 378 district names
select count(distinct district) 
from address

-- 7. What film has the most actors in it? (use film_actor table and get film_id)

-- Answer 7) Lambs Cincinatti, film_id: 508 has 15 actors
select film_id, count(actor_id)
from film_actor
group by film_id 
order by count(actor_id) desc 

-- 8. From store_id 1, how many customers have a last name ending with ‘es’? (use customer table)

-- Answer 8) 21 customers
select first_name, last_name
from customer
where last_name like '%es'

-- 9. How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers
-- with ids between 380 and 430? (use group by and having > 250)

-- Answer 9) 3 payment amounts
SELECT amount, count(amount)
FROM payment
where customer_id between 380 and 430
group by amount
having count(amount) > 250

-- 10. Within the film table, a)how many rating categories are there? 
-- b)And what rating has the most movies total?

-- Answer 10.a) 5 rating categories
-- Answer 10.b) PG-13 has a the most movies at 223
select rating, count(rating)
from film
group by rating
order by count(rating) desc



