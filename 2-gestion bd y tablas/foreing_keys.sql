CREATE TABLE `cliente`
(
    `idCliente` int NOT NULL AUTO_INCREMENT,
    `nombre`    varchar(45) DEFAULT NULL,
    `apellido`  varchar(45) DEFAULT NULL,
    `telefono`  varchar(45) DEFAULT NULL,
    `email`     varchar(45) DEFAULT NULL,
    `ciudad`    varchar(45) DEFAULT NULL,
    `pais`      varchar(45) DEFAULT NULL,
    PRIMARY KEY (`idCliente`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;

CREATE TABLE `departamento`
(
    `idDepartamento` INT         NOT NULL AUTO_INCREMENT,
    `nombre`         VARCHAR(45) NULL,
    PRIMARY KEY (`idDepartamento`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;

CREATE TABLE `empleado`
(
    `idEmpleado`      int NOT NULL AUTO_INCREMENT,
    `nombre`          varchar(45)              DEFAULT NULL,
    `apellido`        varchar(45)              DEFAULT NULL,
    `fechaIngreso`    date                     DEFAULT NULL,
    `fechaNacimiento` date                     DEFAULT NULL,
    `sexo`            ENUM ('hombre', 'mujer') DEFAULT NULL,
    `email`           varchar(45)              DEFAULT NULL,
    `telefono`        varchar(45)              DEFAULT NULL,
    `salario`         decimal(10, 2)           DEFAULT NULL,
    `idDepartamento`  int NULL,
    PRIMARY KEY (`idEmpleado`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;

CREATE TABLE `categoria`
(
    `idCategoria` int NOT NULL AUTO_INCREMENT,
    `nombre`      varchar(45) DEFAULT NULL,
    `descripcion` varchar(45) DEFAULT NULL,
    PRIMARY KEY (`idCategoria`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;


ALTER TABLE `producto`
    CHANGE COLUMN `idProducto` `idProducto` INT(11) NOT NULL,
    ADD PRIMARY KEY (`idProducto`);
;

ALTER TABLE `producto`
    ADD COLUMN `nombre`         VARCHAR(45)    NULL AFTER `idProducto`,
    ADD COLUMN `idCategoria`    INT            NULL AFTER `nombre`,
    ADD COLUMN `precioUnitario` DECIMAL(10, 2) NULL AFTER `idCategoria`;

CREATE TABLE `factura`
(
    `idFactura`  int NOT NULL AUTO_INCREMENT,
    `fecha`      datetime DEFAULT NULL,
    `idCliente`  int      DEFAULT NULL,
    `idEmpleado` int      DEFAULT NULL,
    PRIMARY KEY (`idFactura`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;

CREATE TABLE `detalle_factura`
(
    `idDetalle`      int NOT NULL AUTO_INCREMENT,
    `idFactura`      int            DEFAULT NULL,
    `idProducto`     int            DEFAULT NULL,
    `precioUnitario` decimal(10, 2) DEFAULT NULL,
    `cantidad`       int            DEFAULT NULL,
    PRIMARY KEY (`idDetalle`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;



ALTER TABLE `factura`
    ADD INDEX `IDX_FACTURA_ID_CLIENTE` (`idCliente` ASC) VISIBLE,
    ADD INDEX `IDX_FACTURA_ID_EMPLEADO` (`idEmpleado` ASC) VISIBLE;
;
ALTER TABLE `factura`
    ADD CONSTRAINT `FK_FACTURA_ID_CLIENTE` FOREIGN KEY (`idCliente`) REFERENCES `cliente` (`idCliente`)
        ON DELETE RESTRICT
        ON UPDATE CASCADE,
    ADD CONSTRAINT `FK_FACTURA_ID_EMPLEADO` FOREIGN KEY (`idEmpleado`) REFERENCES `empleado` (`idEmpleado`)
        ON DELETE RESTRICT
        ON UPDATE CASCADE;


ALTER TABLE `detalle_factura`
    ADD INDEX `IDX_DETALLE_FACTURA_ID_FACTURA` (`idFactura` ASC) VISIBLE,
    ADD INDEX `IDX_DETALLE_FACTURA_ID_PRODUCTO` (`idProducto` ASC) VISIBLE;
;
ALTER TABLE `detalle_factura`
    ADD CONSTRAINT `FK_DETALLE_FACTURA_ID_FACTURA` FOREIGN KEY (`idFactura`) REFERENCES `factura` (`idFactura`)
        ON DELETE RESTRICT
        ON UPDATE CASCADE,
    ADD CONSTRAINT `FK_DETALLE_FACTURA_ID_FACTURA` FOREIGN KEY (`idProducto`) REFERENCES `producto` (`idProducto`)
        ON DELETE RESTRICT
        ON UPDATE CASCADE;

ALTER TABLE `empleado`
    ADD INDEX `IDX_EMPLEADO_ID_DEPARTAMENTO` (`idDepartamento` ASC) VISIBLE;
;
ALTER TABLE `empleado`
    ADD CONSTRAINT `FK_EMPLEADO_ID_DEPARTAMENTO` FOREIGN KEY (`idDepartamento`) REFERENCES `departamento` (`idDepartamento`)
        ON DELETE RESTRICT
        ON UPDATE CASCADE;
