# elimina espacios al principio
SELECT LTRIM('     texto con espacios al principio');

# Elimina espacios al final
SELECT RTRIM('texto con espacios al final         ');

# elimina espacios al principio y al final
SELECT TRIM('  texto con espacios  ');


SELECT LOWER(name) AS lowercase_names FROM users;
SELECT UPPER(name) AS uppercase_names FROM users;
