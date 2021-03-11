create database hemolines;
use hemolines;

create table cadastro (
	idEmpresa int primary key auto_increment,
    nomeEmpresa varchar (50),
    email varchar (50),
    telefone varchar (40),
    nacionalidade varchar (40),
    cnpj char (12)
);

insert into cadastro (nomeEmpresa, email, telefone, nacionalidade, cnpj) values 
('Fleury', 'contato@fleury.com', '(+55) 11-24275498', 'Brasileira', '000123450872'),
('Eurolab', 'contato@eurolab.com', '(+353) 1 804 0300', 'Irlandesa', null),
('Medbras', 'contato@medbras.com', '(+55) 11-82711498', 'Brasileira', '008291508721'),
('Hemolabs', 'contato@hemolabs.com', '(+1) 408 291 5467', 'Estadunidense', null),
('Samplefy', 'contato@samplefy.com', '(+1) 428 764 8729', 'Estadunidense', null);

select * from cadastro;

drop table cadastro;

create table cliente(
	idEmpresa int primary key auto_increment,
	qtdCaixas int,
    qtdVeiculos int,
	valorFixo double (15,2),
    tempoRest time,
    tempoGasto time
);

insert into cliente (qtdCaixas, qtdVeiculos, valorFixo, tempoRest, tempoGasto) values 
(2, 1, '200', '27:45:25', '12:14:25'),
(3, 1, '329', '207:46:23', '67:29:34'),
(8, 3, '562', '590:39:19', '525:56:10'),
(1, 1, '120', '8:21:57', '3:01:07'),
(6, 1, '80', '2:43:26', '3:26:28');

select * from cliente;

create table sensor(
	idCaixa int primary key auto_increment,
    idEmpresa int,
    temp float not null default 0,
    dataTemp dateTime default current_timestamp
);

insert into sensor (idEmpresa, temp, dataTemp) values
(1, 2.32, '2021-02-18 10:34:00'),
(1, 4.47, '2021-02-18 10:34:00'),
(2, 3.12, '2021-02-19 7:28:00'),
(2, 9.45, '2021-02-19 7:28:00'),
(2, 5.12, '2021-02-19 7:28:00'),
(3, 6.14, '2021-02-20 9:58:00'),
(3, 1.74, '2021-02-20 9:58:00'),
(3, 2.84, '2021-02-20 9:58:00'),
(3, 9.12, '2021-02-20 9:58:00'),
(3, 5.97, '2021-02-20 9:58:00'),
(3, 8.22, '2021-02-20 9:58:00'),
(3, 7.44, '2021-02-20 9:58:00'),
(3, 4.69, '2021-02-20 9:58:00'),
(4, 6.69, '2021-02-28 8:19:00'),
(5, 1.69, '2021-03-02 9:58:00'),
(5, 1.05, '2021-03-02 9:58:00'),
(5, 3.21, '2021-03-02 9:58:00'),
(5, 2.87, '2021-03-02 9:58:00'),
(5, 5.99, '2021-03-02 9:58:00'),
(5, 3.69, '2021-03-02 9:58:00');

select * from sensor;

drop table sensor;

truncate table sensor;
