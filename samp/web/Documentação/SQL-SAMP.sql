-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema samp
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema samp
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `samp` DEFAULT CHARACTER SET utf8 ;
USE `samp` ;

-- -----------------------------------------------------
-- Table `samp`.`turma`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `samp`.`turma` (
  `cod_turma` INT NOT NULL AUTO_INCREMENT,
  `descricao` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`cod_turma`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `samp`.`coordenador`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `samp`.`coordenador` (
  `cod_coordenador` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`cod_coordenador`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `samp`.`curso`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `samp`.`curso` (
  `cod_curso` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(100) NOT NULL,
  `cod_turma` INT NOT NULL,
  `cod_coordenador` INT NOT NULL,
  PRIMARY KEY (`cod_curso`, `cod_turma`, `cod_coordenador`),
  INDEX `fk_curso_turma1_idx` (`cod_turma` ASC),
  INDEX `fk_curso_coordenador1_idx` (`cod_coordenador` ASC),
  CONSTRAINT `fk_curso_turma1`
    FOREIGN KEY (`cod_turma`)
    REFERENCES `samp`.`turma` (`cod_turma`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_curso_coordenador1`
    FOREIGN KEY (`cod_coordenador`)
    REFERENCES `samp`.`coordenador` (`cod_coordenador`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `samp`.`aluno`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `samp`.`aluno` (
  `cod_aluno` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(100) NOT NULL,
  `usuario` VARCHAR(50) NOT NULL,
  `senha` VARCHAR(20) NOT NULL,
  `cod_curso` INT NOT NULL,
  `cod_turma` INT NOT NULL,
  PRIMARY KEY (`cod_aluno`, `cod_curso`, `cod_turma`),
  INDEX `fk_aluno_curso1_idx` (`cod_curso` ASC, `cod_turma` ASC),
  CONSTRAINT `fk_aluno_curso1`
    FOREIGN KEY (`cod_curso` , `cod_turma`)
    REFERENCES `samp`.`curso` (`cod_curso` , `cod_turma`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `samp`.`perfil`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `samp`.`perfil` (
  `cod_perfil` INT NOT NULL AUTO_INCREMENT,
  `descricao` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`cod_perfil`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `samp`.`gerente`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `samp`.`gerente` (
  `cod_gerente` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(100) NOT NULL,
  `usuario` VARCHAR(50) NOT NULL,
  `senha` VARCHAR(20) NOT NULL,
  `cod_perfil` INT NOT NULL,
  PRIMARY KEY (`cod_gerente`, `cod_perfil`),
  INDEX `fk_gerente_perfil_idx` (`cod_perfil` ASC),
  CONSTRAINT `fk_gerente_perfil`
    FOREIGN KEY (`cod_perfil`)
    REFERENCES `samp`.`perfil` (`cod_perfil`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `samp`.`professor`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `samp`.`professor` (
  `cod_professor` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`cod_professor`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `samp`.`disciplina`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `samp`.`disciplina` (
  `cod_disciplina` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(150) NOT NULL,
  `cod_curso` INT NOT NULL,
  `cod_turma` INT NOT NULL,
  `cod_professor` INT NOT NULL,
  PRIMARY KEY (`cod_disciplina`, `cod_curso`, `cod_turma`, `cod_professor`),
  INDEX `fk_disciplina_curso1_idx` (`cod_curso` ASC, `cod_turma` ASC),
  INDEX `fk_disciplina_professor1_idx` (`cod_professor` ASC),
  CONSTRAINT `fk_disciplina_curso1`
    FOREIGN KEY (`cod_curso` , `cod_turma`)
    REFERENCES `samp`.`curso` (`cod_curso` , `cod_turma`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_disciplina_professor1`
    FOREIGN KEY (`cod_professor`)
    REFERENCES `samp`.`professor` (`cod_professor`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `samp`.`texto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `samp`.`texto` (
  `cod_texto` INT NOT NULL AUTO_INCREMENT,
  `texto` TEXT NOT NULL,
  PRIMARY KEY (`cod_texto`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `samp`.`numerica`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `samp`.`numerica` (
  `cod_numerica` INT NOT NULL AUTO_INCREMENT,
  `didatica` DOUBLE NOT NULL,
  `conhecimento` DOUBLE NOT NULL,
  `interacao` DOUBLE NOT NULL,
  `material` DOUBLE NOT NULL,
  `comunicacao` DOUBLE NOT NULL,
  PRIMARY KEY (`cod_numerica`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `samp`.`avalicao`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `samp`.`avalicao` (
  `cod_avaliacao` INT NOT NULL AUTO_INCREMENT,
  `credibilidade` DOUBLE NOT NULL DEFAULT 1,
  `avaliada` TINYINT(1) NOT NULL DEFAULT 0,
  `cod_professor` INT NOT NULL,
  `cod_texto` INT NOT NULL,
  `cod_numerica` INT NOT NULL,
  PRIMARY KEY (`cod_avaliacao`, `cod_professor`, `cod_texto`, `cod_numerica`),
  INDEX `fk_avalicao_professor1_idx` (`cod_professor` ASC),
  INDEX `fk_avalicao_texto1_idx` (`cod_texto` ASC),
  INDEX `fk_avalicao_numerica1_idx` (`cod_numerica` ASC),
  CONSTRAINT `fk_avalicao_professor1`
    FOREIGN KEY (`cod_professor`)
    REFERENCES `samp`.`professor` (`cod_professor`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_avalicao_texto1`
    FOREIGN KEY (`cod_texto`)
    REFERENCES `samp`.`texto` (`cod_texto`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_avalicao_numerica1`
    FOREIGN KEY (`cod_numerica`)
    REFERENCES `samp`.`numerica` (`cod_numerica`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `samp`.`disciplina_aluno`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `samp`.`disciplina_aluno` (
  `cod_disciplina` INT NOT NULL,
  `cod_curso` INT NOT NULL,
  `cod_turma` INT NOT NULL,
  `cod_professor` INT NOT NULL,
  `cod_aluno` INT NOT NULL,
  PRIMARY KEY (`cod_disciplina`, `cod_curso`, `cod_turma`, `cod_professor`, `cod_aluno`),
  INDEX `fk_disciplina_has_aluno_aluno1_idx` (`cod_aluno` ASC),
  INDEX `fk_disciplina_has_aluno_disciplina1_idx` (`cod_disciplina` ASC, `cod_curso` ASC, `cod_turma` ASC, `cod_professor` ASC),
  CONSTRAINT `fk_disciplina_has_aluno_disciplina1`
    FOREIGN KEY (`cod_disciplina` , `cod_curso` , `cod_turma` , `cod_professor`)
    REFERENCES `samp`.`disciplina` (`cod_disciplina` , `cod_curso` , `cod_turma` , `cod_professor`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_disciplina_has_aluno_aluno1`
    FOREIGN KEY (`cod_aluno`)
    REFERENCES `samp`.`aluno` (`cod_aluno`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;


-- -------------------------------------------------------------- INSERÇÃO DE DADOS -----------------------------------------------------------------

USE samp ;

-- COD | DESCRICAO
INSERT INTO perfil VALUES
(1, "Gerente"),
(2, "Avaliador");

-- COD | NOME | USUARIO | SENHA | COD_PERFIL
INSERT INTO gerente VALUES
(1, "Administrador", "admin", "admin", 1),
(2, "Hector Roberto Velásquez", "hector", "hector", 1),
(3, "Bruna Rayane Gonçalves", "bruna", "bruna", 2);

-- COD | NOME
INSERT INTO coordenador VALUES
(1, "Vander Magalhães"),
(2, "Bill Gates");

-- COD | NOME
INSERT INTO turma VALUES
(1, "SI20142"),
(2, "RDC20151");

-- COD | NOME | COD_TURMA | COD_COORDENADOR
INSERT INTO curso VALUES
(1, "Sistemas de Informação", 1, 1),
(2, "Rede de Computadores", 2, 2);

-- COD | NOME | USER | SENHA | COD_CURSO | COD_TURMA
INSERT INTO aluno VALUES
(1, "Aluno do SAMP", "aluno", "aluno", 1, 1),
(2, "Hector Roberto Velásquez", "si20142hectorroberto", "hector", 1, 1),
(3, "Bruna Rayane Golçalves", "rdc20151brunarayane", "bruna", 2, 2);

-- COD | NOME
INSERT INTO professor VALUES
(1, "Josana Nishihira"),
(2, "Francisco Carlos"),
(3, "Maicon Vasconcelos"),
(4, "Fernanda Figueredo");

-- COD | NOME | COD_CURSO | COD_TURMA | COD_PROFESSOR
INSERT INTO disciplina VALUES
(1, "Gestão de Projetos", 1, 1, 1),
(2, "Padrões de Projetos", 1, 1, 2),
(3, "Legislação e Ética", 1, 1, 1),
(4, "POO Web", 1, 1, 3),
(5, "Gestão da Informação", 1, 1, 4);

-- COD_DISCIPLINA | COD_CURSO | COD_TURMA | COD_PROFESSOR | COD_ALUNO
INSERT INTO disciplina_aluno VALUES
(1, 1, 1, 1, 2),
(2, 1, 1, 2, 2),
(3, 1, 1, 1, 2),
(4, 1, 1, 3, 2),
(5, 1, 1, 4, 2);


-- ------------------------------------------------- QUERYS DOS SISTEMA --------------------------------------------------------------------------

-- LISTAR PROFESSORES DE UM DETERMINADO ALUNO
SELECT p.cod_professor, p.nome, d.nome
FROM aluno a, disciplina_aluno da, disciplina d, professor p
WHERE p.cod_professor = d.cod_professor
AND d.cod_disciplina = da.cod_disciplina
AND da.cod_aluno = a.cod_aluno
AND a.cod_aluno = 2;

-- CADASTRAR ALUNO
INSERT INTO aluno
(nome, usuario, senha, cod_curso, cod_turma) VALUES
("Tiago Nolasco Pontes", "si20142tiagonolasco", "tiago", 2, 2);


-- LISTAR TODOS OS ALUNOS COM NOME DE SUAS DISCIPLINAS
SELECT cod_aluno, nome, cod_curso, cod_turma
FROM aluno;
use samp;
delete from aluno where cod_aluno > 5;
commit;
SELECT descricao FROM turma WHERE cod_turma = 1;






