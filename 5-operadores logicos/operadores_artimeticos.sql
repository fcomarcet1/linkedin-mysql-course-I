SELECT id,(price * units) as total
FROM products;

SELECT id,(price * units * 1.21)-(price * 0.125) as 'total with iva'
FROM products;


