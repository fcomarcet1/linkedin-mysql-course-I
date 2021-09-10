CREATE TABLE IF NOT EXISTS `user` (
   `id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `name` VARCHAR(50) NOT NULL,
  'createdAt' DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);
SELECT * FROM dbName.dbTable;
SELECT CAST(createdAt AS DATE) FROM user;

/* ************** Json ****************/
CREATE TABLE IF NOT EXISTS `tblJson` 
(
    `id` INT NOT NULL AUTO_INCREMENT,
    `data` JSON NULL,
    PRIMARY KEY (`id`)
)
INSERT INTO tblJson (data) VALUES ('{"name": "lerele", "email": "lerele@mail.es"}');