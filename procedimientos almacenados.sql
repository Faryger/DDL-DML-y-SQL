USE `tienda`;
DROP procedure IF EXISTS `InsertFab`;

USE `tienda`;
DROP procedure IF EXISTS `tienda`.`InsertFab`;
;

DELIMITER $$
USE `tienda`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertFab`(
IN Nom VARCHAR(100)
)
BEGIN
INSERT INTO Fabricante (Nombre) VALUES (Nom);
END$$

DELIMITER ;
;


USE `tienda`;
DROP procedure IF EXISTS `InsertProduct`;

DELIMITER $$
USE `tienda`$$
CREATE PROCEDURE `InsertProduct` (
IN Nom  VARCHAR(100),
IN Prec DOUBLE,
IN FKFab INT(10)
)
BEGIN
INSERT INTO Producto (Nombre,Precio,Codigo_fabricante) VALUES (Nom,Prec,FKFab);
END$$

DELIMITER ;

