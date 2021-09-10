/* Update con Join*/
UPDATE tabla1 a, tabla2 b
SET tabla1_campo1 = b.tabla2_campo1
WHERE a.campo_x = b.campo_x

/* UPDATE y INNER JOIN*/
UPDATE tabla1
    INNER JOIN tabla2 ON tabla1.id_tabla2 = tabla2.id
SET tabla1.campo=tabla2.language

/* UPDATE SQL con JOIN a partir registros agregados*/
CREATE TABLE usuario
(
    id            INT(11) PRIMARY KEY NOT NULL DEFAULT AUTOINCREMENT,
    nombre        VARCHAR(100)        NOT NULL,
    total_compras INT(11)             NOT NULL DEFAULT 0
);

CREATE TABLE compra
(
    id           INT(11) PRIMARY KEY NOT NULL DEFAULT AUTOINCREMENT,
    id_usuario   INT(11) REFERENCES usuario (id),
    fecha_compra DATE                NOT NULL,
    total_dinero DECIMAL(10, 2)
);

UPDATE usuario a
    INNER JOIN compra b ON a.id = b.id_usuario
SET a.total_compras = COUNT(b.id);

/* UPDATE con JOIN y un ALIAS*/
SELECT a.id AS id, COUNT(b.id) as total_compras
FROM usuario a
INNER JOIN compra b
ON a.id = b.id_usuario
GROUP BY a.id;

UPDATE usuario a
INNER JOIN (SELECT a.id AS id, COUNT(b.id) as total_compras
            FROM usuario a
            INNER JOIN compra b ON a.id = b.id_usuario
            GROUP BY a.id
           )
    tabla2 ON a.id = tabla2.id
SET a.total_compras = tabla2.total_compras;