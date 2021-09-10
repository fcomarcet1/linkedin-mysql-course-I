/* ************* Tipos de indices ***************/
/*
* INDEX, UNIQUE, FULLTEXT(Busquedas en columnas strings ), SPACIAL, PRIMARY
 */

CREATE TABLE `user`
(
    id                   CHAR(36)     NOT NULL PRIMARY KEY,
    name                 VARCHAR(100) NOT NULL,
    email                VARCHAR(100) NOT NULL,
    password             VARCHAR(100)          DEFAULT NULL,
    avatar               VARCHAR(255)          DEFAULT NULL,
    token                VARCHAR(100)          DEFAULT NULL,
    active               TINYINT(1)            DEFAULT 0,
    reset_password_token VARCHAR(100)          DEFAULT NULL,
    created_at           DATETIME     NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at           DATETIME     NOT NULL DEFAULT CURRENT_TIMESTAMP,
    INDEX IDX_user_email (email),
    CONSTRAINT U_user_email UNIQUE KEY (email)
) DEFAULT CHARACTER SET utf8mb4
  COLLATE utf8mb4_unicode_ci
  ENGINE = InnoDB;


ALTER TABLE `detalle_factura`
    ADD INDEX `IDX_DETALLE_FACTURA_ID_FACTURA` (`idFactura` ASC) VISIBLE,
    ADD INDEX `IDX_DETALLE_FACTURA_ID_PRODUCTO` (`idProducto` ASC) VISIBLE,
    ADD UNIQUE `UQ_DETALLE_FACTURA_EMAIL` (`email`),
    ADD UNIQUE UQ_user_id_group_id (user_id, group_id);

ALTER TABLE ´detalle_factura´
DROP INDEX ´IDX_DETALLE_FACTURA_ID_FACTURA´;