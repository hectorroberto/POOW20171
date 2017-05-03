-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema sam
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema sam
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `sam` DEFAULT CHARACTER SET utf8 ;
USE `sam` ;

-- -----------------------------------------------------
-- Table `sam`.`coordenador`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sam`.`coordenador` (
  `cod_coordenador` INT NOT NULL AUTO_INCREMENT,
  `nome_coordenador` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`cod_coordenador`))
ENGINE = InnoDB;

INSERT INTO coordenador (cod_coordenador, nome_coordenador) VALUES (1, "Vander Magalhães");

-- -----------------------------------------------------
-- Table `sam`.`curso`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sam`.`curso` (
  `cod_curso` INT NOT NULL AUTO_INCREMENT,
  `nome_curso` VARCHAR(70) NOT NULL,
  `coordenador_cod_coordenador` INT NOT NULL,
  PRIMARY KEY (`cod_curso`, `coordenador_cod_coordenador`),
  INDEX `fk_curso_coordenador1_idx` (`coordenador_cod_coordenador` ASC),
  CONSTRAINT `fk_curso_coordenador1`
    FOREIGN KEY (`coordenador_cod_coordenador`)
    REFERENCES `sam`.`coordenador` (`cod_coordenador`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

INSERT INTO curso values (1, "Sistemas de Informação", 1);

-- -----------------------------------------------------
-- Table `sam`.`aluno`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sam`.`aluno` (
  `cod_aluno` INT NOT NULL AUTO_INCREMENT,
  `nome_aluno` VARCHAR(100) NOT NULL,
  `curso_cod_curso` INT NOT NULL,
  `usuario` VARCHAR(45) NOT NULL,
  `senha` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`cod_aluno`, `curso_cod_curso`),
  INDEX `fk_aluno_curso1_idx` (`curso_cod_curso` ASC),
  CONSTRAINT `fk_aluno_curso1`
    FOREIGN KEY (`curso_cod_curso`)
    REFERENCES `sam`.`curso` (`cod_curso`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

INSERT INTO aluno VALUES
(1, "Hector Roberto", 1, "hector", "hector"),
(2, "Brunna Rayanne", 1, "bruna", "bruna");

-- -----------------------------------------------------
-- Table `sam`.`perfil`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sam`.`perfil` (
  `cod_perfil` INT NOT NULL AUTO_INCREMENT,
  `descricao_perfil` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`cod_perfil`))
ENGINE = InnoDB;

INSERT INTO perfil VALUES
(1, "Gerencial"),
(2, "Avaliador");

-- -----------------------------------------------------
-- Table `sam`.`gerencial`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sam`.`gerencial` (
  `cod_gerencial` INT NOT NULL AUTO_INCREMENT,
  `nome_gerente` VARCHAR(70) NOT NULL,
  `perfil_cod_perfil` INT NOT NULL,
  `usuario` VARCHAR(45) NOT NULL,
  `senha` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`cod_gerencial`, `perfil_cod_perfil`),
  INDEX `fk_gerencial_perfil_idx` (`perfil_cod_perfil` ASC),
  CONSTRAINT `fk_gerencial_perfil`
    FOREIGN KEY (`perfil_cod_perfil`)
    REFERENCES `sam`.`perfil` (`cod_perfil`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

INSERT INTO gerencial VALUES
(2, "Sr. Hector Roberto Velásquez", 1, "gerenteHector", "hector" ),
(3, "Sra. Brunna Rayanne Golçalves", 2, "avaliadoraBruna", "bruna" );

-- -----------------------------------------------------
-- Table `sam`.`professor`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sam`.`professor` (
  `cod_professor` INT NOT NULL AUTO_INCREMENT,
  `nome_professor` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`cod_professor`))
ENGINE = InnoDB;

INSERT INTO professor VALUES
(1, "Josana Nishihira"),
(2, "Francisco Gomes"),
(3, "Maicon Vasconcelos"),
(4, "Fernanda Figueira");

-- -----------------------------------------------------
-- Table `sam`.`disciplina`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sam`.`disciplina` (
  `cod_disciplina` INT NOT NULL AUTO_INCREMENT,
  `nome_disciplina` VARCHAR(70) NOT NULL,
  `professor_cod_professor` INT NOT NULL,
  PRIMARY KEY (`cod_disciplina`, `professor_cod_professor`),
  INDEX `fk_disciplina_professor1_idx` (`professor_cod_professor` ASC),
  CONSTRAINT `fk_disciplina_professor1`
    FOREIGN KEY (`professor_cod_professor`)
    REFERENCES `sam`.`professor` (`cod_professor`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

INSERT INTO disciplina VALUES
(1, "Gestão de Projetos", 1),
(2, "Padrão de Projetos", 2),
(3, "Legislação e Ética", 1),
(4, "Programação OO Web", 3),
(5, "Gestão da Informação", 4);


-- -----------------------------------------------------
-- Table `sam`.`disciplina_curso`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sam`.`disciplina_curso` (
  `disciplina_cod_disciplina` INT NOT NULL,
  `curso_cod_curso` INT NOT NULL,
  PRIMARY KEY (`disciplina_cod_disciplina`, `curso_cod_curso`),
  INDEX `fk_disciplina_has_curso_curso1_idx` (`curso_cod_curso` ASC),
  INDEX `fk_disciplina_has_curso_disciplina1_idx` (`disciplina_cod_disciplina` ASC),
  CONSTRAINT `fk_disciplina_has_curso_disciplina1`
    FOREIGN KEY (`disciplina_cod_disciplina`)
    REFERENCES `sam`.`disciplina` (`cod_disciplina`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_disciplina_has_curso_curso1`
    FOREIGN KEY (`curso_cod_curso`)
    REFERENCES `sam`.`curso` (`cod_curso`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `sam`.`disciplina_has_aluno`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sam`.`disciplina_has_aluno` (
  `disciplina_cod_disciplina` INT NOT NULL,
  `disciplina_professor_cod_professor` INT NOT NULL,
  `aluno_cod_aluno` INT NOT NULL,
  `aluno_curso_cod_curso` INT NOT NULL,
  PRIMARY KEY (`disciplina_cod_disciplina`, `disciplina_professor_cod_professor`, `aluno_cod_aluno`, `aluno_curso_cod_curso`),
  INDEX `fk_disciplina_has_aluno_aluno1_idx` (`aluno_cod_aluno` ASC, `aluno_curso_cod_curso` ASC),
  INDEX `fk_disciplina_has_aluno_disciplina1_idx` (`disciplina_cod_disciplina` ASC, `disciplina_professor_cod_professor` ASC),
  CONSTRAINT `fk_disciplina_has_aluno_disciplina1`
    FOREIGN KEY (`disciplina_cod_disciplina` , `disciplina_professor_cod_professor`)
    REFERENCES `sam`.`disciplina` (`cod_disciplina` , `professor_cod_professor`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_disciplina_has_aluno_aluno1`
    FOREIGN KEY (`aluno_cod_aluno` , `aluno_curso_cod_curso`)
    REFERENCES `sam`.`aluno` (`cod_aluno` , `curso_cod_curso`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `sam`.`numerico`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sam`.`numerico` (
  `cod_numerico` INT NOT NULL AUTO_INCREMENT,
  `didatica` DOUBLE NOT NULL,
  `conhecimento` DOUBLE NOT NULL,
  `interecao` DOUBLE NOT NULL,
  `material` DOUBLE NOT NULL,
  `comunicacao` DOUBLE NOT NULL,
  PRIMARY KEY (`cod_numerico`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `sam`.`texto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sam`.`texto` (
  `cod_texto` INT NOT NULL AUTO_INCREMENT,
  `texto` TEXT NOT NULL,
  `avaliada` TINYINT(1) NULL DEFAULT 0,
  PRIMARY KEY (`cod_texto`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `sam`.`avaliacoes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sam`.`avaliacoes` (
  `cod_avaliacoes` INT NOT NULL AUTO_INCREMENT,
  `numerico_cod_numerico` INT NOT NULL,
  `texto_cod_texto` INT NOT NULL,
  PRIMARY KEY (`cod_avaliacoes`, `numerico_cod_numerico`, `texto_cod_texto`),
  INDEX `fk_avaliacoes_numerico1_idx` (`numerico_cod_numerico` ASC),
  INDEX `fk_avaliacoes_texto1_idx` (`texto_cod_texto` ASC),
  CONSTRAINT `fk_avaliacoes_numerico1`
    FOREIGN KEY (`numerico_cod_numerico`)
    REFERENCES `sam`.`numerico` (`cod_numerico`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_avaliacoes_texto1`
    FOREIGN KEY (`texto_cod_texto`)
    REFERENCES `sam`.`texto` (`cod_texto`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `sam`.`aluno_avaliacoes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sam`.`aluno_avaliacoes` (
  `aluno_cod_aluno` INT NOT NULL,
  `aluno_curso_cod_curso` INT NOT NULL,
  `avaliacoes_cod_avaliacoes` INT NOT NULL,
  `avaliacoes_numerico_cod_numerico` INT NOT NULL,
  `avaliacoes_texto_cod_texto` INT NOT NULL,
  `realizado` TINYINT(1) NULL DEFAULT 0,
  PRIMARY KEY (`aluno_cod_aluno`, `aluno_curso_cod_curso`, `avaliacoes_cod_avaliacoes`, `avaliacoes_numerico_cod_numerico`, `avaliacoes_texto_cod_texto`),
  INDEX `fk_aluno_has_avaliacoes_avaliacoes1_idx` (`avaliacoes_cod_avaliacoes` ASC, `avaliacoes_numerico_cod_numerico` ASC, `avaliacoes_texto_cod_texto` ASC),
  INDEX `fk_aluno_has_avaliacoes_aluno1_idx` (`aluno_cod_aluno` ASC, `aluno_curso_cod_curso` ASC),
  CONSTRAINT `fk_aluno_has_avaliacoes_aluno1`
    FOREIGN KEY (`aluno_cod_aluno` , `aluno_curso_cod_curso`)
    REFERENCES `sam`.`aluno` (`cod_aluno` , `curso_cod_curso`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_aluno_has_avaliacoes_avaliacoes1`
    FOREIGN KEY (`avaliacoes_cod_avaliacoes` , `avaliacoes_numerico_cod_numerico` , `avaliacoes_texto_cod_texto`)
    REFERENCES `sam`.`avaliacoes` (`cod_avaliacoes` , `numerico_cod_numerico` , `texto_cod_texto`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `sam`.`nota`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sam`.`nota` (
  `cod_nota` INT NOT NULL AUTO_INCREMENT,
  `prof_didatica` DOUBLE NOT NULL,
  `prof_conhecimento` DOUBLE NOT NULL,
  `prof_interacao` DOUBLE NOT NULL,
  `prof_material` DOUBLE NOT NULL,
  `prof_comunicacao` DOUBLE NULL,
  `professor_cod_professor` INT NOT NULL,
  PRIMARY KEY (`cod_nota`),
  INDEX `fk_nota_professor1_idx` (`professor_cod_professor` ASC),
  CONSTRAINT `fk_nota_professor1`
    FOREIGN KEY (`professor_cod_professor`)
    REFERENCES `sam`.`professor` (`cod_professor`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
