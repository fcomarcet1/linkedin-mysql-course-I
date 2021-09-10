SELECT * FROM products
WHERE description IS NOT NULL;

SELECT * FROM user
WHERE status IS NULL;

SELECT * FROM user
WHERE ISNULL(status);

