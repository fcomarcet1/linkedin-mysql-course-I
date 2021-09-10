# ex cast datetime to date
SELECT CAST(createdAt AS DATE) AS format_date FROM users;

# castear valor por defecto de now()
SELECT CAST(now() AS DATE) AS format_to_date;

# Cast decimal to string
SELECT name, CAST(price AS CHAR) AS cast_price_to_string FROM products;

# convertir de un tipo a otro
SELECT CONVERT('20210812', DATE) AS cast_string_to_date FROM products;
