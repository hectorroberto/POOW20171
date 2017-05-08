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
  `cod_coordenador` INT NOT NULL,
  PRIMARY KEY (`cod_curso`, `cod_coordenador`),
  INDEX `fk_curso_coordenador1_idx` (`cod_coordenador` ASC),
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
  PRIMARY KEY (`cod_aluno`, `cod_curso`),
  INDEX `fk_aluno_curso1_idx` (`cod_curso` ASC),
  CONSTRAINT `fk_aluno_curso1`
    FOREIGN KEY (`cod_curso`)
    REFERENCES `samp`.`curso` (`cod_curso`)
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
  `nome` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`cod_professor`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `samp`.`disciplina`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `samp`.`disciplina` (
  `cod_disciplina` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(100) NOT NULL,
  `cod_professor` INT NOT NULL,
  `cod_curso` INT NOT NULL,
  `cod_coordenador` INT NOT NULL,
  PRIMARY KEY (`cod_disciplina`, `cod_professor`, `cod_curso`, `cod_coordenador`),
  INDEX `fk_disciplina_professor1_idx` (`cod_professor` ASC),
  INDEX `fk_disciplina_curso1_idx` (`cod_curso` ASC, `cod_coordenador` ASC),
  CONSTRAINT `fk_disciplina_professor1`
    FOREIGN KEY (`cod_professor`)
    REFERENCES `samp`.`professor` (`cod_professor`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_disciplina_curso1`
    FOREIGN KEY (`cod_curso` , `cod_coordenador`)
    REFERENCES `samp`.`curso` (`cod_curso` , `cod_coordenador`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `samp`.`nota`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `samp`.`nota` (
  `cod_nota` INT NOT NULL AUTO_INCREMENT,
  `didatica` DOUBLE NOT NULL,
  `conhecimento` DOUBLE NOT NULL,
  `interacao` DOUBLE NOT NULL,
  `material` DOUBLE NOT NULL,
  `comunicacao` DOUBLE NOT NULL,
  `cod_professor` INT NOT NULL,
  PRIMARY KEY (`cod_nota`, `cod_professor`),
  INDEX `fk_nota_professor1_idx` (`cod_professor` ASC),
  CONSTRAINT `fk_nota_professor1`
    FOREIGN KEY (`cod_professor`)
    REFERENCES `samp`.`professor` (`cod_professor`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
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
-- Table `samp`.`texto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `samp`.`texto` (
  `cod_texto` INT NOT NULL AUTO_INCREMENT,
  `texto` TEXT NOT NULL,
  `avaliada` TINYINT(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`cod_texto`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `samp`.`avaliacao`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `samp`.`avaliacao` (
  `cod_avaliacao` INT NOT NULL AUTO_INCREMENT,
  `cod_aluno` INT NOT NULL,
  `cod_curso` INT NOT NULL,
  `cod_numerica` INT NOT NULL,
  `cod_texto` INT NOT NULL,
  PRIMARY KEY (`cod_avaliacao`, `cod_aluno`, `cod_curso`, `cod_numerica`, `cod_texto`),
  INDEX `fk_avaliacao_aluno1_idx` (`cod_aluno` ASC, `cod_curso` ASC),
  INDEX `fk_avaliacao_numerica1_idx` (`cod_numerica` ASC),
  INDEX `fk_avaliacao_texto1_idx` (`cod_texto` ASC),
  CONSTRAINT `fk_avaliacao_aluno1`
    FOREIGN KEY (`cod_aluno` , `cod_curso`)
    REFERENCES `samp`.`aluno` (`cod_aluno` , `cod_curso`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_avaliacao_numerica1`
    FOREIGN KEY (`cod_numerica`)
    REFERENCES `samp`.`numerica` (`cod_numerica`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_avaliacao_texto1`
    FOREIGN KEY (`cod_texto`)
    REFERENCES `samp`.`texto` (`cod_texto`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `samp`.`disciplina_aluno`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `samp`.`disciplina_aluno` (
  `cod_disciplina` INT NOT NULL,
  `cod_professor` INT NOT NULL,
  `cod_curso` INT NOT NULL,
  `cod_coordenador` INT NOT NULL,
  `cod_aluno` INT NOT NULL,
  PRIMARY KEY (`cod_disciplina`, `cod_professor`, `cod_curso`, `cod_coordenador`, `cod_aluno`),
  INDEX `fk_disciplina_has_aluno_aluno1_idx` (`cod_aluno` ASC),
  INDEX `fk_disciplina_has_aluno_disciplina1_idx` (`cod_disciplina` ASC, `cod_professor` ASC, `cod_curso` ASC, `cod_coordenador` ASC),
  CONSTRAINT `fk_disciplina_has_aluno_disciplina1`
    FOREIGN KEY (`cod_disciplina` , `cod_professor` , `cod_curso` , `cod_coordenador`)
    REFERENCES `samp`.`disciplina` (`cod_disciplina` , `cod_professor` , `cod_curso` , `cod_coordenador`)
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

-- -------------------------------------------------- INSERÇÃO DE DADOS ------------------------------------------------------------- --



INSERT INTO coordenador VALUES (1, "Vander Magalhães");

INSERT INTO curso values (1, "Sistemas de Informação", 1);

INSERT INTO aluno VALUES
(1, "Hector Roberto", "hector", "hector", 1),
(2, "Brunna Rayanne", "bruna", "bruna", 1);

INSERT INTO perfil VALUES
(1, "Gerencial"),
(2, "Avaliador");

INSERT INTO gerente VALUES
(2, "Sr. Hector Roberto Velásquez", "gerenteHector", "hector", 1 ),
(3, "Sra. Brunna Rayanne Golçalves", "avaliadoraBruna", "bruna", 2 );

INSERT INTO professor VALUES
(1, "Josana Nishihira"),
(2, "Francisco Gomes"),
(3, "Maicon Vasconcelos"),
(4, "Fernanda Figueira");

INSERT INTO disciplina VALUES
(1, "Gestão de Projetos", 1, 1, 1),
(2, "Padrão de Projetos", 2, 1, 1),
(3, "Legislação e Ética", 1, 1, 1),
(4, "Programação OO Web", 3, 1, 1),
(5, "Gestão da Informação", 4, 1, 1);

-- ADICIONANDO HECTOR A TODAS AS DISCIPLINAS DE SI 6 
INSERT INTO disciplina_aluno VALUES
(1, 1, 1, 1, 1),
(2, 2, 1, 1, 1),
(3, 1, 1, 1, 1),
(4, 3, 1, 1, 1),
(5, 4, 1, 1, 1);

SELECT p.cod_professor, p.nome FROM
professor p, disciplina d, disciplina_aluno da, aluno a WHERE
da.cod_disciplina = d.cod_disciplina
AND da.cod_professor = p.cod_professor
AND da.cod_aluno = a.cod_aluno
AND a.cod_aluno = 1;



select * from professor;



