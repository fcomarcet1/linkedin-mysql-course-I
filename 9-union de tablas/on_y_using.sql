SELECT
    c.name AS category,
    p.description AS product
FROM products p
INNER JOIN categories c USING (idCategory) ;