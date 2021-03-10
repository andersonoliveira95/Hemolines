create database hemolines;

use hemolines;

create table registro (
idEmpresa int auto_increment primary key,
cliente varchar(40),
telefone varchar(20),
CNPJ varchar(20),
nacionalidade varchar(35),
email varchar(40)
);

insert into registro(cliente,telefone,CNPJ,nacionalidade,email) values
('Instituto Gabriel','+55 (19) 3801-2047','55.908.501/0001-00','brasileira','info@gabriel.org.br'), -- todos CNPJ's são fictícios aqui
('Abrace','(61) 32098800','30.798.543/0001-00','brasileira','contato@abrace.com.br'),
('Ciras','(79) 3248-0011','31.445.777/0001-00','brasileira','ciras@ciras.org.br'),
('Hospital São Lucas da pucrs',' (51) 3320.3000','22.365.876/0001-00','brasileira','saolucaspucrs@saolucas.org.br'),
('SalvoVidas','(11) 3660 5972','28.755.123/0001-00','brasileira','contato@salvovidas.com.br'),
('Fleury','(11) 3179 0822','79.698.643/0001-00','brasileira','contato@fleury.com.br');

create table monitoramento ( 
códigoCaixa int primary key,
temperatura int,
cliente int, -- Esse campo será preenchido com o idEmpresa da tabela registro
data_hora Datetime default current_timestamp -- defaut current_timestamp a coluna tem o valor padrão fornecido
);

insert into monitoramento(códigoCaixa,temperatura,cliente) values
('103','30','1'),
('504','4','2'),
('102','5','1'),
('268','2','3'),
('700','2','4'),
('668','-10','2'),
('600','-1','4');

select * from monitoramento;

select * from registro;

select * from monitoramento where temperatura <= '0';

select * from monitoramento where temperatura >= '10';

update registro set telefone = '(19) 3801-2047' where idEmpresa = 1;

delete from registro where  idEmpresa = 4;

alter table registro modify nacionalidade varchar(30);