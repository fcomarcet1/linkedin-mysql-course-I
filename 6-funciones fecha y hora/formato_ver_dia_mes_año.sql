/* Añadir a la fecha actual 10 dias*/
SELECT DATE_ADD(NOW(), INTERVAL 10 DAY) AS fecha;

SELECT DATE_ADD(NOW(), INTERVAL -10 DAY) AS fecha;

SELECT DATE_ADD(NOW(), INTERVAL 10 YEAR) AS fecha;

/* Extraer año actual*/
SELECT EXTRACT(YEAR FROM NOW()) AS year, EXTRACT(MONTH FROM NOW()) AS month;
SELECT EXTRACT(DAY FROM NOW()) AS day;


SELECT name, DATE_FORMAT(fechaNacimento, '%a, %b %Y') AS 'fecha de nacimento' /* Sat, Aug 1974*/
FROM users;