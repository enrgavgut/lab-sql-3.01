-- LAB 3.01 

USE sakila;

-- 1. Drop column picture from staff.

ALTER TABLE staff
  DROP COLUMN picture;
  
SELECT *
FROM sakila.staff;

-- 2. A new person is hired to help Jon. Her name is TAMMY SANDERS, and she is a customer. Update the database accordingly.

INSERT INTO staff(first_name, last_name, address_id, email, store_id, active, username) 
VALUES
('Tammy', 'Sanders','79', 'Tammy.Sanders@sakilastaff.com', 2, 1,'Tammy');

SELECT *
FROM sakila.staff;


-- 3. Add rental for movie "Academy Dinosaur" by Charlotte Hunter from Mike Hillyer at Store 1.

-- Add in Rental Table 

INSERT INTO rental(inventory_id, customer_id, staff_id)
VALUES
(4, 130, 1);

-- SELECT inventory_id
-- FROM sakila.inventory
-- WHERE film_id = 1 AND store_id = 1;

-- SELECT customer_id
-- FROM sakila.customer
-- WHERE first_name = 'Charlotte' AND last_name = 'Hunter';

-- Add in Payment

INSERT INTO payment (customer_id, staff_id, rental_id, amount)
VALUES
(130, 1, 16050, 0.99);

-- SELECT film_id
-- FROM sakila.film
-- WHERE title = 'Academy Dinosaur';

-- SELECT rental_rate
-- FROM sakila.film
-- WHERE film_id = 1;




