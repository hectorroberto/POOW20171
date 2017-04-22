# Host: localhost  (Version: 5.6.24-log)
# Date: 2016-11-04 14:51:20
# Generator: MySQL-Front 5.3  (Build 4.214)

/*!40101 SET NAMES utf8 */;

#
# Structure for table "cidade"
#

CREATE TABLE `cidade` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) DEFAULT NULL,
  `idestado` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "cidade"
#

INSERT INTO `cidade` VALUES (1,'Rio Branco',1),(2,'Cruzeiro do Sul',1);

#
# Structure for table "contato"
#

CREATE TABLE `contato` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) DEFAULT NULL,
  `idcidade` int(11) DEFAULT NULL,
  `telefone` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `idcidade` (`idcidade`),
  CONSTRAINT `idcidade` FOREIGN KEY (`idcidade`) REFERENCES `cidade` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "contato"
#


#
# Structure for table "estado"
#

CREATE TABLE `estado` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "estado"
#

INSERT INTO `estado` VALUES (1,'Acre'),(2,'Rondonia');
