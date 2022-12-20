------ EXAMPLE 1------
--SELECT film_id, 
--title
--FROM film
--ORDER BY title 
--FETCH FIRST 10 ROW ONLY;

------ EXAMPLE 2 ------
--SELECT film_id, 
--       title
--FROM film
--ORDER BY title
--OFFSET 8 ROWS
--FETCH FIRST 10 ROW ONLY;

------ EXAPMLE 3 ------
--SELECT customer_id,
--       rental_id,
--	   return_date
--FROM rental
--WHERE customer_id IN (10,12)
--ORDER BY return_date DESC;

------ EXAMPLE 4 ------
--SELECT first_name,
--       last_name
--FROM customer
--WHERE customer_id IN (
--     SELECT 
--	       customer_id
--     FROM 
--	      rental
--	 WHERE 
--	      CAST(return_date AS DATE) = '2005-05-27'
--);

------ EXAPMLES 5 ------
SELECT customer_id,
      SUM(amount)
FROM payment
GROUP BY customer_id
HAVING SUM(amount) > 200;
