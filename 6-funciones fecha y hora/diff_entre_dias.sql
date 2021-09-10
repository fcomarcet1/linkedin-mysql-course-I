SELECT DATE ('2020-12-20 23:21:25') AS fecha;

SELECT NOW();

SELECT DATE (NOW() AS fecha);

SELECT DATEDIFF('2020-12-20', '2020-12-15'); /* 5 */

/* floor() devuelve parte entera*/
SELECT name, FLOOR(DATEDIFF(NOW(), fechaNacimiento)/365) AS age