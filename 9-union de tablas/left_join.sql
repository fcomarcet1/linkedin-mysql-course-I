# Clientes que no tienen factura
SELECT
    f.idFactura AS factura,
    c.nombre AS cliente
FROM clientes c
LEFT JOIN facturas f ON c.idCliente = f.idCliente
WHERE f.idFactura IS NULL
ORDER BY c.nombre DESC;

