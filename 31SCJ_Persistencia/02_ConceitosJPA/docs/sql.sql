show databases;

create schema dbeventos;

use dbeventos;

create table eventos (
	id int primary key AUTO_INCREMENT,
    descricao varchar(45) not null,
    data datetime not null,
    responsavel varchar(45) not null   
);

create table participantes (
    id int not null AUTO_INCREMENT,
    idevento id,
    nome varchar(45) not null,
    email varchar(45) not null, 
    PRIMARY KEY (idevento,id),
    FOREIGN KEY (idevento)
        REFERENCES eventos(id)
);