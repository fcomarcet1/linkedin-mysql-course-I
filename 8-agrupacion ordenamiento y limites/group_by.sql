# podemos filtrar resultados y obterlos sin repetir
# listado de ciudades sin repetir
SELECT city FROM user GROUP BY city;

# total de cada una de las facturas
SELECT id, SUM(amount * price) AS total FROM sales GROUP BY id;

# total de facturas por cada cliente
SELECT idClient, COUNT(idInvoice) AS invoices_count FROM sales GROUP BY idClient;