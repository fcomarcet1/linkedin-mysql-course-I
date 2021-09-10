INSERT INTO table_name (column1, column2, columnN)
VALUES (value1, value2, valueN);

INSERT INTO table_name
VALUES (value1, value2, valueN);

INSERT INTO table1 (col1, col2, colN)
SELECT col1, col2, colN
FROM table2;

INSERT TOP(1) INTO table1 (column1, column2, columnN)
SELECT col1, col2, colN
FROM table2;

INSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES ('Cardinal', 'Tom B. Erichsen', 'Skagen 21', 'Stavanger', '4006', 'Norway');

