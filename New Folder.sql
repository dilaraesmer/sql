--SELECT first_name,
--LENGTH(first_name) len
--FROM customer
--ORDER BY 
--LENGTH(first_name) DESC;
-----Example-----
--SELECT last_name, first_name
--FROM customer
--WHERE first_name = 'Kelly' AND last_name = 'Knott';
-----Example2-----
--SELECT first_name, last_name
--FROM customer
--WHERE first_name IN ('Kelly', 'Jo', 'Alexander');
-----Example3-----
--SELECT first_name, last_name 
--FROM customer
--WHERE first_name LIKE 'Kath%';
-----Example4-----
SELECT first_name, 
LENGTH(first_name) name_length
FROM customer
WHERE first_name LIKE 'K%' AND
LENGTH(first_name) BETWEEN 3 AND 7