SELECT * FROM lerele
WHERE price > 1000 AND stock = 'In store' ;

SELECT * FROM lerele
WHERE price > 1000 OR stock = 'out' ;

/* Devuelve productos mayores a 1000 o la categoria es no stock pero no los que possen ambas condiciones*/
SELECT * FROM lerele
WHERE price > 1000 XOR category = 'no stock' ;
