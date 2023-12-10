USE sakila;
SHOW FULL TABLES;

SELECT COUNT(*) FROM film;

SELECT COUNT(*) FROM film_text;

-- 1
SHOW FULL TABLES;

 -- 2
SELECT * FROM actor;
SELECT * FROM film;
SELECT * FROM customer;

-- 3.1
SELECT title FROM film;

-- 3.2
SELECT name FROM language;

-- 3.1
SELECT first_name FROM staff;

-- 4
SELECT DISTINCT release_year FROM film;
-- 5.1
SELECT count(store_id) FROM store;

-- 5.2
SELECT count(staff_id) FROM staff;

-- 5.3
SELECT count(inventory_id)-count(return_date) FROM rental;

-- 5.4
SELECT count(DISTINCT last_name) FROM actor;
-- 6
SELECT TOP(10) length FROM film;

-- 6
SELECT length FROM film
ORDER BY length DESC
LIMIT 10;

-- 7.1
SELECT first_name FROM actor
WHERE first_name = 'SCARLETT';

-- 7.2
SELECT title FROM film
WHERE title LIKE '%ARMAGEDDON%' AND length > 100;

-- 7.3
SELECT special_features FROM film
WHERE special_features LIKE '%BEHIND THE SCENES%';
