CREATE DATABASE IF NOT EXISTS `test`;
USE `test`;

CREATE TABLE IF NOT EXISTS `user`
(
    `id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `name` VARCHAR(50) NOT NULL,
    'createdAt' DATETIME DEFAULT CURRENT_TIMESTAMP
        ON UPDATE CURRENT_TIMESTAMP
)
ENGINE = InnoDB DEFAULT CHARACTER SET utf8mb4;

CREATE TABLE IF NOT EXISTS 'producttt'
(
    `id` CHAR(36) NOT NULL,
    `price` FLOAT(4,2) NOT NULL DEFAULT 0,
    'createdAt' DATETIME DEFAULT CURRENT_TIMESTAMP
        ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (`id`)
)
ENGINE = InnoDB DEFAULT CHARACTER SET utf8mb4;

ALTER TABLE `test`.`producttt` RENAME TO `test`.`product`;
ALTER TABLE producttt RENAME product;
RENAME TABLE tbl1Name TO newNametbl1, tbl2Name TO newNametbl2;
RENAME TABLE producttt TO product;
