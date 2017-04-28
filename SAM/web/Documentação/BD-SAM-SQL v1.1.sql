-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';


CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;

CREATE SCHEMA IF NOT EXISTS `sam` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `sam`.`usuarios`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sam`.`usuarios` (
  `cod_usuario` INT(11) NOT NULL AUTO_INCREMENT,
  `login` VARCHAR(30) NOT NULL,
  `senha` VARCHAR(40) NOT NULL,
  PRIMARY KEY (`cod_usuario`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `mydb`.`perfil`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`perfil` (
  `cod_perfil` INT NOT NULL AUTO_INCREMENT,
  `tipo_perfil` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`cod_perfil`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`gerencia`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`gerencia` (
  `cod_gerencia` INT NOT NULL AUTO_INCREMENT,
  `nome_completo` VARCHAR(100) NOT NULL,
  `perfil` VARCHAR(45) NOT NULL,
  `usuarios_cod_usuario` INT(11) NOT NULL,
  `perfil_cod_perfil` INT NOT NULL,
  PRIMARY KEY (`cod_gerencia`),
  INDEX `fk_gerencia_usuarios_idx` (`usuarios_cod_usuario` ASC),
  INDEX `fk_gerencia_perfil1_idx` (`perfil_cod_perfil` ASC),
  CONSTRAINT `fk_gerencia_usuarios`
    FOREIGN KEY (`usuarios_cod_usuario`)
    REFERENCES `sam`.`usuarios` (`cod_usuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_gerencia_perfil1`
    FOREIGN KEY (`perfil_cod_perfil`)
    REFERENCES `mydb`.`perfil` (`cod_perfil`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`avaliacao`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`avaliacao` (
  `cod_avaliacao` INT NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`cod_avaliacao`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`avalicao_textual`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`avalicao_textual` (
  `cod_avaliacao_textual` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `texto` TEXT NOT NULL,
  `avaliacao_cod_avaliacao` INT NOT NULL,
  PRIMARY KEY (`cod_avaliacao_textual`),
  INDEX `fk_avalicao_textual_avaliacao1_idx` (`avaliacao_cod_avaliacao` ASC),
  CONSTRAINT `fk_avalicao_textual_avaliacao1`
    FOREIGN KEY (`avaliacao_cod_avaliacao`)
    REFERENCES `mydb`.`avaliacao` (`cod_avaliacao`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `sam`.`coordenador`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sam`.`coordenador` (
  `cod_coordenador` INT(11) NOT NULL AUTO_INCREMENT,
  `nome_completo` VARCHAR(100) NOT NULL,
  `email` VARCHAR(100) NULL DEFAULT NULL,
  `data_nascimento` DATE NOT NULL,
  PRIMARY KEY (`cod_coordenador`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `sam`.`curso`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sam`.`curso` (
  `cod_curso` INT(11) NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(60) NOT NULL,
  PRIMARY KEY (`cod_curso`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `sam`.`aluno`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sam`.`aluno` (
  `cod_aluno` INT(11) NOT NULL AUTO_INCREMENT,
  `nome_completo` VARCHAR(100) NOT NULL,
  `data_nascimento` DATE NULL DEFAULT NULL,
  `email` VARCHAR(100) NULL DEFAULT NULL,
  `curso` VARCHAR(50) NOT NULL,
  `avaliação_textual` TEXT NULL DEFAULT NULL,
  `nota_id_disciplina` INT(11) NOT NULL,
  PRIMARY KEY (`cod_aluno`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `mydb`.`avaliacao_aluno`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`avaliacao_aluno` (
  `avaliacao_cod_avaliacao` INT NOT NULL,
  `aluno_cod_aluno` INT(11) NOT NULL,
  `pendencia` TINYINT(1) NOT NULL,
  `gerencia_cod_gerencia` INT NOT NULL,
  PRIMARY KEY (`avaliacao_cod_avaliacao`, `aluno_cod_aluno`),
  INDEX `fk_avaliacao_has_aluno_aluno1_idx` (`aluno_cod_aluno` ASC),
  INDEX `fk_avaliacao_has_aluno_avaliacao1_idx` (`avaliacao_cod_avaliacao` ASC),
  INDEX `fk_avaliacao_has_aluno_gerencia1_idx` (`gerencia_cod_gerencia` ASC),
  CONSTRAINT `fk_avaliacao_has_aluno_avaliacao1`
    FOREIGN KEY (`avaliacao_cod_avaliacao`)
    REFERENCES `mydb`.`avaliacao` (`cod_avaliacao`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_avaliacao_has_aluno_aluno1`
    FOREIGN KEY (`aluno_cod_aluno`)
    REFERENCES `sam`.`aluno` (`cod_aluno`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_avaliacao_has_aluno_gerencia1`
    FOREIGN KEY (`gerencia_cod_gerencia`)
    REFERENCES `mydb`.`gerencia` (`cod_gerencia`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

USE `sam` ;

-- -----------------------------------------------------
-- Table `sam`.`aluno`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sam`.`aluno` (
  `cod_aluno` INT(11) NOT NULL AUTO_INCREMENT,
  `nome_completo` VARCHAR(100) NOT NULL,
  `data_nascimento` DATE NULL DEFAULT NULL,
  `email` VARCHAR(100) NULL DEFAULT NULL,
  `curso` VARCHAR(50) NOT NULL,
  `avaliação_textual` TEXT NULL DEFAULT NULL,
  `nota_id_disciplina` INT(11) NOT NULL,
  PRIMARY KEY (`cod_aluno`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `sam`.`avaliacao`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sam`.`avaliacao` (
  `cod_avaliacao` INT(11) NOT NULL AUTO_INCREMENT,
  `tipo` VARCHAR(60) NOT NULL,
  PRIMARY KEY (`cod_avaliacao`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `sam`.`coordenador`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sam`.`coordenador` (
  `cod_coordenador` INT(11) NOT NULL AUTO_INCREMENT,
  `nome_completo` VARCHAR(100) NOT NULL,
  `email` VARCHAR(100) NULL DEFAULT NULL,
  `data_nascimento` DATE NOT NULL,
  PRIMARY KEY (`cod_coordenador`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `sam`.`curso`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sam`.`curso` (
  `cod_curso` INT(11) NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(60) NOT NULL,
  PRIMARY KEY (`cod_curso`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `sam`.`disciplina`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sam`.`disciplina` (
  `cod_disciplina` INT(11) NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(60) NOT NULL,
  PRIMARY KEY (`cod_disciplina`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `sam`.`professor`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sam`.`professor` (
  `cod_professor` INT(11) NOT NULL AUTO_INCREMENT,
  `nome_completo` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`cod_professor`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `sam`.`usuarios`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sam`.`usuarios` (
  `cod_usuario` INT(11) NOT NULL AUTO_INCREMENT,
  `login` VARCHAR(30) NOT NULL,
  `senha` VARCHAR(40) NOT NULL,
  PRIMARY KEY (`cod_usuario`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
