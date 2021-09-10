#Cambiar valor de una columna tipo string
SELECT REPLACE(description, 'Zumo', 'Concentrado a base de zumo') FROM products WHERE id = 10;

# Añadir un codigo a la columan nombre
SELECT CONCAT(name, REPEAT(0, 3), YEAR(now())) AS name_code FROM users; # Pepe0002021

# Revertir string
SELECT REVERSE(name) AS reverse_name FROM users;

# Extraer texto a partir de una posicion
SELECT SUBSTRING(name, 2) AS extract_string_from_position FROM users WHERE id = 4;
SELECT SUBSTRING(name, 2, 3) AS extract_string_from_position FROM users WHERE id = 4;

