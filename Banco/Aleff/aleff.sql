CREATE DATABASE bd_hls;
USE bd_hls;

CREATE TABLE empresa(
    id_empresa INT PRIMARY KEY AUTO_INCREMENT,
    nome_empresa VARCHAR(50) NOT NULL,
    tipo_empresa VARCHAR(25) NOT NULL,
    contato_empresa VARCHAR(50) NOT NULL,
    cnpj_empresa VARCHAR(10) NOT NULL 
);

CREATE TABLE motorista(
    id_motorista INT PRIMARY KEY AUTO_INCREMENT,
    id_transporte INTEGER NOT NULL,
    carteira_habilitacao VARCHAR(15) NOT NULL
);

CREATE TABLE temperatura(
    id_temperatura INT PRIMARY KEY AUTO_INCREMENT,
    id_sensor INTEGER NOT NULL,
    temperatura_media FLOAT NOT NULL,
    temperatura_max FLOAT NOT NULL,
    temperatura_min FLOAT NOT NULL,
    data_temperatura DATE NOT NULL
);

CREATE TABLE sensor(
    id_sensor INT PRIMARY KEY AUTO_INCREMENT,
    id_temperatura INTEGER NOT NULL,
    id_viagem INTEGER NOT NULL,
    id_transporte INTEGER NOT NULL
);

CREATE TABLE caixa(
    id_caixa INT PRIMARY KEY AUTO_INCREMENT,
    quantidade_caixa INTEGER NOT NULL,
    quantidade_amostras INTEGER NOT NULL
);

CREATE TABLE transporte(
    id_transporte INT PRIMARY KEY AUTO_INCREMENT,
    id_caixa INTEGER NOT NULL,
    placa_transporte VARCHAR(10) NOT NULL
);

CREATE TABLE viagem(
    id_viagem INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    id_transporte INTEGER NOT NULL,
    id_empresa INTEGER NOT NULL,
    id_motorista INTEGER NOT NULL,
    date_viagem DATETIME NOT NULL 
);