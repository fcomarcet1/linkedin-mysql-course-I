SELECT * FROM products
WHERE id = 1
   OR id = 5
   OR id = 10;

SELECT * FROM products
WHERE id IN(1,5,10);

SELECT * FROM products
WHERE id NOT IN(1,5,10);