create database sam;
use sam;

#criando a tabela de login 
Create table usuarios (
cod_usuario int NOT NULL AUTO_INCREMENT,
login Varchar(30) not null,
senha Varchar(40)not null,
Primary Key (cod_usuario)) ENGINE = InnoDB;

#criando a tabela professor 
create table professor (
cod_professor int NOT NULL AUTO_INCREMENT,
nome_completo varchar (100) not null,
primary key (cod_professor));


#criando a tabela aluno 
create table aluno (
cod_aluno int not null auto_increment,
nome_completo varchar(100) not null,
data_nascimento date null ,
email varchar(100),
curso varchar(50) not null,  
avaliação_textual text not null, 
nota_id_disciplina int not null,
primary key (cod_aluno));


#criando a tabela curso
create table curso (
cod_curso int not null auto_increment,
nome varchar(60) not null,
primary key (cod_curso));


#criando a tabela disciplina
create table disciplina (
cod_disciplina int NOT NULL AUTO_INCREMENT,
nome varchar(60) not null,
primary key (cod_disciplina));

#criando a tabela avaliacao
create table avaliacao (
cod_avaliacao int not null auto_increment,
tipo varchar(60) not null,
primary key (cod_avaliacao));

create table coordenador (
cod_coordenador int auto_increment,
nome_completo varchar(100) not null,
email varchar(100),
data_nascimento date not null,
primary key(cod_coordenador));





