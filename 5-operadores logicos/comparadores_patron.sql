SELECT * FROM products
WHERE description LIKE 'Article-';

SELECT * FROM products
WHERE description  NOT LIKE 'Article-';

SELECT * FROM products
WHERE description LIKE '%A%t%c%e';

/* Empiezan por Jav*/
SELECT id, nombre, apellidos
FROM usuario
WHERE nombre LIKE 'Jav%';

/* Terminan por ez*/
SELECT id, nombre, apellidos
FROM usuario
WHERE nombre LIKE '%ez';

SELECT id, nombre, apellidos
FROM usuario
WHERE nombre NOT LIKE '%ez';

/* apellido contiene "mi":*/
SELECT *
FROM usuario
WHERE apellidos LIKE '%mi%';

/* usuarios los cuales sus apellidos contienen una L, una R, y una Z en este orden*/
SELECT *
FROM usuario
WHERE apellidos LIKE '%L%R%Z%';

/* usuarios que tengan un nombre con 5 letras*/
SELECT *
FROM usuario
WHERE nombre LIKE '_____';
