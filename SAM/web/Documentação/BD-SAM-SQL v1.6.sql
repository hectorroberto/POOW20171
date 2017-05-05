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
CREATE SCHEMA IF NOT EXISTS `sam` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ;
USE `sam` ;

-- -----------------------------------------------------
-- Table `sam`.`coordenador`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sam`.`coordenador` (
  `cod_coordenador` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`cod_coordenador`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `sam`.`curso`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sam`.`curso` (
  `cod_curso` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(100) NOT NULL,
  `cod_coordenador` INT NOT NULL,
  PRIMARY KEY (`cod_curso`, `cod_coordenador`) ,
  INDEX `fk_curso_coordenador1_idx` (`cod_coordenador` ASC) ,
  CONSTRAINT `fk_curso_coordenador1`
    FOREIGN KEY (`cod_coordenador`)
    REFERENCES `sam`.`coordenador` (`cod_coordenador`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `sam`.`professor`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sam`.`professor` (
  `cod_professor` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`cod_professor`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `sam`.`disciplina`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sam`.`disciplina` (
  `cod_disciplina` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(100) NOT NULL,
  `cod_professor` INT NOT NULL,
  `cod_curso` INT NOT NULL,
  `cod_coordenador` INT NOT NULL,
  PRIMARY KEY (`cod_disciplina`, `cod_professor`, `cod_curso`, `cod_coordenador`) ,
  INDEX `fk_disciplina_professor1_idx` (`cod_professor` ASC) ,
  INDEX `fk_disciplina_curso1_idx` (`cod_curso` ASC, `cod_coordenador` ASC) ,
  CONSTRAINT `fk_disciplina_professor1`
    FOREIGN KEY (`cod_professor`)
    REFERENCES `sam`.`professor` (`cod_professor`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_disciplina_curso1`
    FOREIGN KEY (`cod_curso` , `cod_coordenador`)
    REFERENCES `sam`.`curso` (`cod_curso` , `cod_coordenador`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `sam`.`nota`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sam`.`nota` (
  `cod_nota` INT NOT NULL AUTO_INCREMENT,
  `didatica` FLOAT NOT NULL,
  `conhecimento` FLOAT NOT NULL,
  `interacao` FLOAT NOT NULL,
  `material` FLOAT NOT NULL,
  `comunicacao` FLOAT NOT NULL,
  `cod_professor` INT NOT NULL,
  PRIMARY KEY (`cod_nota`, `cod_professor`) ,
  INDEX `fk_nota_professor1_idx` (`cod_professor` ASC) ,
  CONSTRAINT `fk_nota_professor1`
    FOREIGN KEY (`cod_professor`)
    REFERENCES `sam`.`professor` (`cod_professor`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `sam`.`perfil`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sam`.`perfil` (
  `cod_perfil` INT NOT NULL AUTO_INCREMENT,
  `descricao` VARCHAR(70) NOT NULL,
  PRIMARY KEY (`cod_perfil`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `sam`.`user`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sam`.`user` (
  `cod_user` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(100) NOT NULL,
  `usuario` VARCHAR(50) NOT NULL,
  `senha` VARCHAR(20) NOT NULL,
  `cod_curso` INT NULL,
  `cod_perfil` INT NOT NULL,
  PRIMARY KEY (`cod_user`, `cod_curso`, `cod_perfil`) ,
  INDEX `fk_user_curso1_idx` (`cod_curso` ASC) ,
  INDEX `fk_user_perfil1_idx` (`cod_perfil` ASC) ,
  CONSTRAINT `fk_user_curso1`
    FOREIGN KEY (`cod_curso`)
    REFERENCES `sam`.`curso` (`cod_curso`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_user_perfil1`
    FOREIGN KEY (`cod_perfil`)
    REFERENCES `sam`.`perfil` (`cod_perfil`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `sam`.`avaliacao`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sam`.`avaliacao` (
  `cod_avaliacao` INT NOT NULL AUTO_INCREMENT,
  `avaliada` TINYINT(1) NOT NULL DEFAULT 0,
  `cod_user` INT NOT NULL,
  `cod_curso` INT NOT NULL,
  PRIMARY KEY (`cod_avaliacao`, `cod_user`, `cod_curso`) ,
  INDEX `fk_avaliacao_user1_idx` (`cod_user` ASC, `cod_curso` ASC) ,
  CONSTRAINT `fk_avaliacao_user1`
    FOREIGN KEY (`cod_user` , `cod_curso`)
    REFERENCES `sam`.`user` (`cod_user` , `cod_curso`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `sam`.`numerica`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sam`.`numerica` (
  `cod_numerica` INT NOT NULL AUTO_INCREMENT,
  `didatica` FLOAT NOT NULL,
  `conhecimento` FLOAT NOT NULL,
  `interacao` FLOAT NOT NULL,
  `material` FLOAT NOT NULL,
  `comunicacao` FLOAT NOT NULL,
  `cod_avaliacao` INT NOT NULL,
  `cod_user` INT NOT NULL,
  `cod_curso` INT NOT NULL,
  PRIMARY KEY (`cod_numerica`, `cod_avaliacao`, `cod_user`, `cod_curso`) ,
  INDEX `fk_numerica_avaliacao1_idx` (`cod_avaliacao` ASC, `cod_user` ASC, `cod_curso` ASC) ,
  CONSTRAINT `fk_numerica_avaliacao1`
    FOREIGN KEY (`cod_avaliacao` , `cod_user` , `cod_curso`)
    REFERENCES `sam`.`avaliacao` (`cod_avaliacao` , `cod_user` , `cod_curso`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `sam`.`texto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sam`.`texto` (
  `cod_texto` INT NOT NULL AUTO_INCREMENT,
  `texto` TEXT NOT NULL,
  `avaliada` TINYINT(1) NOT NULL DEFAULT 0,
  `cod_avaliacao` INT NOT NULL,
  `cod_user` INT NOT NULL,
  `cod_curso` INT NOT NULL,
  PRIMARY KEY (`cod_texto`, `cod_avaliacao`, `cod_user`, `cod_curso`) ,
  INDEX `fk_texto_avaliacao1_idx` (`cod_avaliacao` ASC, `cod_user` ASC, `cod_curso` ASC) ,
  CONSTRAINT `fk_texto_avaliacao1`
    FOREIGN KEY (`cod_avaliacao` , `cod_user` , `cod_curso`)
    REFERENCES `sam`.`avaliacao` (`cod_avaliacao` , `cod_user` , `cod_curso`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `sam`.`disciplina_aluno`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sam`.`disciplina_aluno` (
  `cod_disciplina` INT NOT NULL,
  `cod_aluno` INT NOT NULL,
  PRIMARY KEY (`cod_disciplina`, `cod_aluno`) ,
  INDEX `fk_disciplina_has_aluno_disciplina1_idx` (`cod_disciplina` ASC) ,
  INDEX `fk_disciplina_aluno_user1_idx` (`cod_aluno` ASC) ,
  CONSTRAINT `fk_disciplina_has_aluno_disciplina1`
    FOREIGN KEY (`cod_disciplina`)
    REFERENCES `sam`.`disciplina` (`cod_disciplina`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_disciplina_aluno_user1`
    FOREIGN KEY (`cod_aluno`)
    REFERENCES `sam`.`user` (`cod_user`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;


-- ----------------------------------------------------------------------------- CAMPO DE INSERT ----------------------------------------------------------------  --

INSERT INTO perfil VALUES
(1, "Aluno"),
(2, "Gerente"),
(3, "Avaliador"),
(4, "Admin");

INSERT INTO coordenador VALUES
(1, "Gerente"),
(2, "Vander Magalhães");

INSERT INTO curso VALUES
(1, "Gerente", 1),
(2, "Sistemas de Informação", 1);

INSERT INTO user VALUES
(1, "Hector Roberto Velásquez", "hector", "hector", 2, 1),
(2, "Brunna Rayanne Golçalves", "bruna", "bruna", 2, 1);

INSERT INTO USER VALUES
(3, "Sr. Hector Roberto Velásquez", "gerenteHector", "hector", 1, 2),
(4, "Sra. Brunna Rayanne Golçalves", "avaliadoraBruna", "bruna", 1, 3);

INSERT INTO professor VALUES
(1, "Josana Nishihira"),
(2, "Francisco Gomes"),
(3, "Maicon Vasconcelos"),
(4, "Fernanda Figueira");

INSERT INTO disciplina VALUES
(1, 	"Gestão de Projetos", 	1, 	2, 	2),
(2, 	"Padrão de Projetos", 	2, 	2, 	2),
(3,	 	"Legislação e Ética", 	1, 	2, 	2),
(4, 	"Programação OO Web", 	3, 	2, 	2),
(5, 	"Gestão da Informação", 4, 	2, 	2);

-- ADICIONANDO HECTOR A TODAS AS DISCIPLINAS DE SI 6 
INSERT INTO disciplina_has_aluno VALUES
(1, 1, 1, 1),
(2, 2, 1, 1),
(3, 1, 1, 1),
(4, 3, 1, 1),
(5, 4, 1, 1);


-- --------------------------------------------------------------------------- CAMPO DE TESTES ---------------------------------------------------------------  --

-- SELECIONAR TODOS OS PROFESSOR DO ALUNO
select p.cod_professor, p.nome_professor
from disciplina_has_aluno da, disciplina d, aluno a, professor p where
da.disciplina_cod_disciplina = d.cod_disciplina
and da.disciplina_professor_cod_professor = p.cod_professor
and da.aluno_cod_aluno = a.cod_aluno
and a.cod_aluno = 1;

-- SELECIONAR TODOS OS PROFESSORES DAS DISCIPLINAS
SELECT p.cod_professor, p.nome_professor FROM
disciplina d, professor p WHERE
d.professor_cod_professor = p.cod_professor;

--                                                 -------------------- CAMPO DE COMANDOS AVULSOS -----------------
select * from professor where cod_professor = 1;
select * from professor;
select * from disciplina;
select * from aluno;
select * from disciplina_has_aluno;
select * from aluno;
select * from disciplina;
select * from perfil;

