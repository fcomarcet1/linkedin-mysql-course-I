# Total stock de todos los productos
SELECT SUM(stock) AS total_stock FROM products;

# precio total de un productp
SELECT SUM(price) AS total_price FROM products WHERE id = 25;

# contar cantidad de productos
SELECT COUNT(*) FROM products;

# contar cantidad de productos de una categoria
SELECT COUNT(*) FROM products WHERE categoryId = 55;

# Contar no repetidos categorias usadas en la tbl producto
SELECT COUNT(DISTINCT categoryId) FROM products;


