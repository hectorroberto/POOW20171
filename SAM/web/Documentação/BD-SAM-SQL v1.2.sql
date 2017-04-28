-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema SAM
-- -----------------------------------------------------

CREATE SCHEMA IF NOT EXISTS `SAM` DEFAULT CHARACTER SET utf8 ;
USE `SAM` ;

-- -----------------------------------------------------
-- Table `SAM`.`usuarios`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `SAM`.`usuarios` (
  `cod_usuario` INT(11) NOT NULL AUTO_INCREMENT,
  `login` VARCHAR(30) NOT NULL,
  `senha` VARCHAR(40) NOT NULL,
  PRIMARY KEY (`cod_usuario`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `SAM`.`perfil`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `SAM`.`perfil` (
  `cod_perfil` INT NOT NULL AUTO_INCREMENT,
  `tipo_perfil` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`cod_perfil`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `SAM`.`gerencia`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `SAM`.`gerencia` (
  `cod_gerencia` INT NOT NULL AUTO_INCREMENT,
  `nome_completo` VARCHAR(100) NOT NULL,
  `perfil` VARCHAR(45) NOT NULL,
  `usuarios_cod_usuario` INT(11) NOT NULL,
  `perfil_cod_perfil` INT NOT NULL,
  PRIMARY KEY (`cod_gerencia`, `usuarios_cod_usuario`, `perfil_cod_perfil`),
  INDEX `fk_gerencia_usuarios1_idx` (`usuarios_cod_usuario` ASC),
  INDEX `fk_gerencia_perfil1_idx` (`perfil_cod_perfil` ASC),
  CONSTRAINT `fk_gerencia_usuarios1`
    FOREIGN KEY (`usuarios_cod_usuario`)
    REFERENCES `SAM`.`usuarios` (`cod_usuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_gerencia_perfil1`
    FOREIGN KEY (`perfil_cod_perfil`)
    REFERENCES `SAM`.`perfil` (`cod_perfil`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `SAM`.`avaliacao`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `SAM`.`avaliacao` (
  `cod_avaliacao` INT NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`cod_avaliacao`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `SAM`.`avalicao_textual`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `SAM`.`avalicao_textual` (
  `cod_avaliacao_textual` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `texto` TEXT NOT NULL,
  `avaliacao_cod_avaliacao` INT NOT NULL,
  PRIMARY KEY (`cod_avaliacao_textual`, `avaliacao_cod_avaliacao`),
  INDEX `fk_avalicao_textual_avaliacao1_idx` (`avaliacao_cod_avaliacao` ASC),
  CONSTRAINT `fk_avalicao_textual_avaliacao1`
    FOREIGN KEY (`avaliacao_cod_avaliacao`)
    REFERENCES `SAM`.`avaliacao` (`cod_avaliacao`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `SAM`.`coordenador`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `SAM`.`coordenador` (
  `cod_coordenador` INT(11) NOT NULL AUTO_INCREMENT,
  `nome_completo` VARCHAR(100) NOT NULL,
  `email` VARCHAR(100) NULL DEFAULT NULL,
  `data_nascimento` DATE NOT NULL,
  `cod_avaliacao_aluno` INT NOT NULL,
  PRIMARY KEY (`cod_coordenador`, `cod_avaliacao_aluno`),
  INDEX `fk_coordenador_avaliacao_aluno1_idx` (`cod_avaliacao_aluno` ASC),
  CONSTRAINT `fk_coordenador_avaliacao_aluno1`
    FOREIGN KEY (`cod_avaliacao_aluno`)
    REFERENCES `SAM`.`avaliacao_aluno` (`avaliacao_cod_avaliacao`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `SAM`.`curso`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `SAM`.`curso` (
  `cod_curso` INT(11) NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(60) NOT NULL,
  `coordenador_cod_coordenador` INT(11) NOT NULL,
  PRIMARY KEY (`cod_curso`, `coordenador_cod_coordenador`),
  INDEX `fk_curso_coordenador1_idx` (`coordenador_cod_coordenador` ASC),
  CONSTRAINT `fk_curso_coordenador1`
    FOREIGN KEY (`coordenador_cod_coordenador`)
    REFERENCES `SAM`.`coordenador` (`cod_coordenador`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `SAM`.`aluno`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `SAM`.`aluno` (
  `cod_aluno` INT(11) NOT NULL AUTO_INCREMENT,
  `nome_completo` VARCHAR(100) NOT NULL,
  `avaliação_textual` TEXT NULL DEFAULT NULL,
  `nota_id_disciplina` INT(11) NOT NULL,
  `usuarios_cod_usuario` INT(11) NOT NULL,
  `curso_cod_curso` INT(11) NOT NULL,
  `curso_coordenador_cod_coordenador` INT(11) NOT NULL,
  PRIMARY KEY (`cod_aluno`, `usuarios_cod_usuario`, `curso_cod_curso`, `curso_coordenador_cod_coordenador`),
  INDEX `fk_aluno_usuarios1_idx` (`usuarios_cod_usuario` ASC),
  INDEX `fk_aluno_curso1_idx` (`curso_cod_curso` ASC, `curso_coordenador_cod_coordenador` ASC),
  CONSTRAINT `fk_aluno_usuarios1`
    FOREIGN KEY (`usuarios_cod_usuario`)
    REFERENCES `SAM`.`usuarios` (`cod_usuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_aluno_curso1`
    FOREIGN KEY (`curso_cod_curso` , `curso_coordenador_cod_coordenador`)
    REFERENCES `SAM`.`curso` (`cod_curso` , `coordenador_cod_coordenador`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `SAM`.`avaliacao_aluno`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `SAM`.`avaliacao_aluno` (
  `avaliacao_cod_avaliacao` INT NOT NULL AUTO_INCREMENT,
  `aluno_cod_aluno` INT(11) NOT NULL,
  `pendencia` TINYINT(1) NOT NULL DEFAULT 0,
  `gerencia_cod_gerencia` INT NOT NULL,
  PRIMARY KEY (`avaliacao_cod_avaliacao`, `aluno_cod_aluno`, `gerencia_cod_gerencia`),
  INDEX `fk_avaliacao_has_aluno_aluno1_idx` (`aluno_cod_aluno` ASC),
  INDEX `fk_avaliacao_has_aluno_avaliacao1_idx` (`avaliacao_cod_avaliacao` ASC),
  INDEX `fk_avaliacao_aluno_gerencia1_idx` (`gerencia_cod_gerencia` ASC),
  CONSTRAINT `fk_avaliacao_has_aluno_avaliacao1`
    FOREIGN KEY (`avaliacao_cod_avaliacao`)
    REFERENCES `SAM`.`avaliacao` (`cod_avaliacao`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_avaliacao_has_aluno_aluno1`
    FOREIGN KEY (`aluno_cod_aluno`)
    REFERENCES `SAM`.`aluno` (`cod_aluno`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_avaliacao_aluno_gerencia1`
    FOREIGN KEY (`gerencia_cod_gerencia`)
    REFERENCES `SAM`.`gerencia` (`cod_gerencia`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `SAM`.`table1`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `SAM`.`table1` (
)
ENGINE = InnoDB;

USE `SAM` ;

-- -----------------------------------------------------
-- Table `SAM`.`avaliacao_numerica`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `SAM`.`avaliacao_numerica` (
  `cod_avaliacao_numerica` INT(11) NOT NULL,
  `nota` FLOAT NOT NULL,
  `avaliacao_cod_avaliacao` INT NOT NULL,
  PRIMARY KEY (`cod_avaliacao_numerica`, `avaliacao_cod_avaliacao`),
  INDEX `fk_avaliacao_numerica_avaliacao1_idx` (`avaliacao_cod_avaliacao` ASC),
  CONSTRAINT `fk_avaliacao_numerica_avaliacao1`
    FOREIGN KEY (`avaliacao_cod_avaliacao`)
    REFERENCES `SAM`.`avaliacao` (`cod_avaliacao`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `SAM`.`professor`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `SAM`.`professor` (
  `cod_professor` INT(11) NOT NULL AUTO_INCREMENT,
  `nome_completo` VARCHAR(100) NOT NULL,
  `cod_avaliacao_aluno` INT NOT NULL,
  PRIMARY KEY (`cod_professor`, `cod_avaliacao_aluno`),
  INDEX `fk_professor_avaliacao_aluno1_idx` (`cod_avaliacao_aluno` ASC),
  CONSTRAINT `fk_professor_avaliacao_aluno1`
    FOREIGN KEY (`cod_avaliacao_aluno`)
    REFERENCES `SAM`.`avaliacao_aluno` (`avaliacao_cod_avaliacao`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `SAM`.`disciplina`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `SAM`.`disciplina` (
  `cod_disciplina` INT(11) NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(60) NOT NULL,
  `curso_cod_curso` INT(11) NOT NULL,
  `curso_cod_curso1` INT(11) NOT NULL,
  `professor_cod_professor` INT(11) NOT NULL,
  PRIMARY KEY (`cod_disciplina`, `curso_cod_curso1`, `professor_cod_professor`),
  INDEX `fk_disciplina_curso1_idx` (`curso_cod_curso1` ASC),
  INDEX `fk_disciplina_professor1_idx` (`professor_cod_professor` ASC),
  CONSTRAINT `fk_disciplina_curso1`
    FOREIGN KEY (`curso_cod_curso1`)
    REFERENCES `SAM`.`curso` (`cod_curso`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_disciplina_professor1`
    FOREIGN KEY (`professor_cod_professor`)
    REFERENCES `SAM`.`professor` (`cod_professor`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `SAM`.`professor_curso`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `SAM`.`professor_curso` (
  `professor_cod_professor` INT(11) NOT NULL,
  `curso_cod_curso` INT(11) NOT NULL,
  `gerencia_cod_gerencia` INT NOT NULL,
  PRIMARY KEY (`professor_cod_professor`, `curso_cod_curso`, `gerencia_cod_gerencia`),
  INDEX `fk_professor_has_curso_curso1_idx` (`curso_cod_curso` ASC),
  INDEX `fk_professor_has_curso_professor1_idx` (`professor_cod_professor` ASC),
  INDEX `fk_professor_curso_gerencia1_idx` (`gerencia_cod_gerencia` ASC),
  CONSTRAINT `fk_professor_has_curso_professor1`
    FOREIGN KEY (`professor_cod_professor`)
    REFERENCES `SAM`.`professor` (`cod_professor`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_professor_has_curso_curso1`
    FOREIGN KEY (`curso_cod_curso`)
    REFERENCES `SAM`.`curso` (`cod_curso`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_professor_curso_gerencia1`
    FOREIGN KEY (`gerencia_cod_gerencia`)
    REFERENCES `SAM`.`gerencia` (`cod_gerencia`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `SAM`.`disciplina_aluno`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `SAM`.`disciplina_aluno` (
  `disciplina_cod_disciplina` INT(11) NOT NULL,
  `aluno_cod_aluno` INT(11) NOT NULL,
  `gerencia_cod_gerencia` INT NOT NULL,
  PRIMARY KEY (`disciplina_cod_disciplina`, `aluno_cod_aluno`, `gerencia_cod_gerencia`),
  INDEX `fk_disciplina_has_aluno_aluno1_idx` (`aluno_cod_aluno` ASC),
  INDEX `fk_disciplina_has_aluno_disciplina1_idx` (`disciplina_cod_disciplina` ASC),
  INDEX `fk_disciplina_aluno_gerencia1_idx` (`gerencia_cod_gerencia` ASC),
  CONSTRAINT `fk_disciplina_has_aluno_disciplina1`
    FOREIGN KEY (`disciplina_cod_disciplina`)
    REFERENCES `SAM`.`disciplina` (`cod_disciplina`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_disciplina_has_aluno_aluno1`
    FOREIGN KEY (`aluno_cod_aluno`)
    REFERENCES `SAM`.`aluno` (`cod_aluno`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_disciplina_aluno_gerencia1`
    FOREIGN KEY (`gerencia_cod_gerencia`)
    REFERENCES `SAM`.`gerencia` (`cod_gerencia`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
