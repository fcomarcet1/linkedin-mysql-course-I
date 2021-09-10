# Obtener DB usada.
SELECT DATABASE();
# Obtener user.
SELECT USER();
# Obtener DB version.
SELECT VERSION();

# Obtener numero de filas/columnas en la ultima declaracion
SELECT * FROM products;
SELECT FOUND_ROWS(); # 12


INSERT INTO products(id, name, price) VALUES (12, 'rubber', 25);
SELECT ROW_COUNT(); # 1

# obtener ultimo id insertado
SELECT LAST_INSERT_ID() FROM users;