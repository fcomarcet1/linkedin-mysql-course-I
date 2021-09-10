# Concatenar
SELECT CONCAT(name, ' ', apellido) as complete_name FROM users; # Pepe lopez

SELECT CONCAT_WS('-', name, surname) AS complete_name FROM users; # Pepe-lopez

# posision de un caracter
SELECT INSTR(name, 'p') AS position FROM users WHERE id = 1;

# longitud de un texto
SELECT name, length(name) AS name_length FROM users;