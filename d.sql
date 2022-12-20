SELECT film_id, 
       title
FROM film
ORDER BY title 
FETCH FIRST 10 ROW ONLY;