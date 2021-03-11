create database hemolines;

use hemolines;

create table cliente (
idEmpresa int auto_increment primary key, 
nomeEmpresa varchar(40),
telefone varchar(20),
CNPJ varchar(20) not null,
email varchar(40)
);

create table servico(

	idServico int primary key auto_increment, 
	qtdCaixas int not null,
    qtdVeiculos int not null,
	valorFixo double,
    tempoViagem time not null
);

create table monitoramento ( 
codigoCaixa int primary key,
temperatura float not null,
cliente int, -- Esse campo será preenchido com o idEmpresa da tabela cliente
data_hora Datetime default current_timestamp -- defaut current_timestamp a coluna tem o valor padrão fornecido
);

insert into cliente(nomeEmpresa,telefone,CNPJ,email) values
('Instituto Gabriel','+55 (19) 3801-2047','55.908.501/0001-00','info@gabriel.org.br'), -- todos CNPJ's são fictícios aqui
('Abrace','(61) 32098800','30.798.543/0001-00','contato@abrace.com.br'),
('Ciras','(79) 3248-0011','31.445.777/0001-00','ciras@ciras.org.br'),
('Hospital São Lucas da pucrs',' (51) 3320.3000','22.365.876/0001-00','saolucaspucrs@saolucas.org.br'),
('SalvoVidas','(11) 3660 5972','28.755.123/0001-00','contato@salvovidas.com.br'),
('Fleury','(11) 3179 0822','79.698.643/0001-00','contato@fleury.com.br');

insert into monitoramento(codigoCaixa,temperatura,cliente) values
('103','30','1'),
('504','4','2'),
('102','5','1'),
('268','2','3'),
('700','2','4'),
('668','-10','2'),
('600','-1','4');

insert into servico (qtdCaixas, qtdVeiculos, valorFixo, tempoViagem) values 
(10, 2, '200', '27:45:25'),
(13, 2, '329', '207:46:23'),
(15, 3, '562', '590:39:19'),
(1, 1, '120', '8:21:57'),
(6, 1, '80', '2:43:26');

select * from monitoramento;

select * from cliente;

select * from servico;

select * from monitoramento where temperatura <= 0;

select * from monitoramento where temperatura >= 10;

select * from monitoramento where temperatura > 10 or temperatura < 0;

update cliente set telefone = '(19) 3801-2047' where idEmpresa = 1;

delete from cliente where  idEmpresa = 4;

alter table cliente modify CNPJ varchar(25);

select * from servico order by valorFixo;

desc cliente;