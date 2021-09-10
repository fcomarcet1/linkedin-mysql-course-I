SELECT
    c.name AS category,
    p.description AS product
FROM products p
INNER JOIN categories c ON c.idCategory = p.idCategory;

SELECT
    f.idFactura AS factura,
    c.nombre AS cliente,
    e.nombre AS empleado
FROM facturas f
INNER JOIN clientes c ON c.idCliente = f.idCliente
INNER JOIN empleados e ON e.idEmpleado = f.idEmpleado
ORDER BY f.idFactura;


SELECT * FROM clientes
CROSS JOIN facturas;



