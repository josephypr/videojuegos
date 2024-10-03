-- MySQL Workbench Synchronization
-- Generated: 2024-10-02 13:13
-- Model: New Model
-- Version: 1.0
-- Project: Name of the project
-- Author: Ambiente

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

CREATE TABLE IF NOT EXISTS `videojuegos`.`compra` (
  `idcompra` INT(11) NOT NULL,
  `fecha` DATE NULL DEFAULT NULL,
  `precio_total` INT(11) NULL DEFAULT NULL,
  `metodo_pago` INT(11) NULL DEFAULT NULL,
  `usuario_idusuario` INT(11) NOT NULL,
  PRIMARY KEY (`idcompra`, `usuario_idusuario`),
  INDEX `fk_compra_usuario_idx` (`usuario_idusuario` ) ,
  CONSTRAINT `fk_compra_usuario`
    FOREIGN KEY (`usuario_idusuario`)
    REFERENCES `videojuegos`.`usuario` (`idusuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE TABLE IF NOT EXISTS `videojuegos`.`detalle de compra` (
  `cantidad` INT(11) NULL DEFAULT NULL,
  `compra_idcompra` INT(11) NOT NULL,
  `compra_usuario_idusuario` INT(11) NOT NULL,
  `producto_idproducto` INT(11) NOT NULL,
  PRIMARY KEY (`compra_idcompra`, `compra_usuario_idusuario`, `producto_idproducto`),
  INDEX `fk_detalle de compra_producto1_idx` (`producto_idproducto` ) ,
  CONSTRAINT `fk_detalle de compra_compra1`
    FOREIGN KEY (`compra_idcompra` , `compra_usuario_idusuario`)
    REFERENCES `videojuegos`.`compra` (`idcompra` , `usuario_idusuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_detalle de compra_producto1`
    FOREIGN KEY (`producto_idproducto`)
    REFERENCES `videojuegos`.`producto` (`idproducto`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
