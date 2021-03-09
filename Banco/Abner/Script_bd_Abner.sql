show databases;
use db_hemolines;

create table tb_empresa(
	id_empresa int primary key auto_increment,
    nome_empresa varchar(80) not null,
    razaosocial_empresa varchar(80) not null,
    cnpj_empresa varchar (20) not null,
    email_empresa varchar(80) not null,
    telefone_empresa varchar(80) not null
);

create table tb_funcionario(
	id_funcionario int primary key auto_increment,
    nome_funcionario varchar(80)
);

create table tb_veiculo(
	id_veiculo int primary key auto_increment,
    placa_veiculo varchar(7) not null,
    capacidade_caixas_veiculo int not null
);

create table tb_viagem(
	id_viagem int primary key auto_increment,
    id_funcionario int not null,
    id_caixa int not null,
    id_veiculo int not null,
    descricao_viagem varchar(300),
    data_viagem date not null,
    endereco_partida varchar(100) not null,
    endereco_destino varchar(100) not null,
	hora_partida varchar(4) not null,
    hora_chegada varchar(4) not null
);

create table tb_caixa(
	id_caixa int primary key auto_increment,
    id_sensor int not null,
    volume_caixa int not null
);

create table tb_sensor(
	id_sensor int primary key auto_increment,
    temperatura_media float(4,2),
	temperatura_max float(4,2),
    temperatura_min float(4,2)
);

create table tb_registro_temperatura(
	id_sensor int,
    temperatura_registro float(4,2),
	dia_registro date,
    hora_registro time,
);





