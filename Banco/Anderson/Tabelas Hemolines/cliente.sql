use Hemolines;
create table Cliente (
idcliente int primary key auto_increment,
cnpj char (18),
nome varchar (40),
data_de_inscriçao date,
telefone varchar (14),
imail varchar (40),
responsavel varchar (40) );

insert into Cliente values (
null,'46.068.425/0001-33','Hemocentro Unicamp','2021-03-05','(11)996554678','hemocentro.unicamp@gmail.com','Vivian'),
(null,'46.068.425/0021-34','Hemocentro São Paulo','2021-03-05','(11)996554678','hemocentro.SP@gmail.com','Yoshi'),
(null,'46.068.425/0031-35','Hemocentro são caetano','2021-03-05','(11)99655-4458','hemocentro.S.Caetano@gmail.com','kaline');

select * from Cliente;

UPDATE Cliente SET telefone = '(11)99655-2563' 
	WHERE idcliente = '1';

drop table Cliente;
