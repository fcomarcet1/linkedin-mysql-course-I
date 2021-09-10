# Total de facturas de cada cliente.
SELECT idClient, COUNT(idInvoice) AS nº_invoice
FROM sales
GROUP BY idClient WITH ROLLUP ;

#  id  nº_invoice
#  1    3
#  2    6
#  3    4
# null  13

# vemos como devuelve un null vamos a solucionarlo
SELECT
IF(GROUPING(idClient, 'Total', idClient)) AS client,
COUNT(idInvoice) AS nº_invoice
FROM sales
GROUP BY idClient WITH ROLLUP ;

#  id   nº_invoice
#  1     3
#  2     6
#  3     4
# Total  13

# Obtener valores de una columna concatenados por comas
# obtener categorias y cada uno de los productos separados por comas.
SELECT categoryId, GROUP_CONCAT(productId) AS product
FROM products
GROUP BY categoryId;

#  categoryId   products
#      1        3,7,14
#      2        6,45
#      3        4,8


# facturas y total de cada factura
SELECT idFactura, SUM(precio * unidad * 1.21) AS total
FROM detalle_factura
GROUP BY idFactura
HAVING total > 100 ;


