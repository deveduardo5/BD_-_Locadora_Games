CREATE DATABASE locadora_de_games;

USE locadora_de_games;

# TABELA EMPRESA

CREATE TABLE IF NOT EXISTS empresa(
id_empresa INT PRIMARY KEY auto_increment,
razao_social varchar (100) not null,
nome_fantasia varchar (100) not null,
cnpj varchar (100) not null unique

);
insert into empresa (
razao_social,
nome_fantasia,
cnpj
) values (
'Locadora de Games',
'Bizarro Games',
'30.157.936/0001-20'
);

select *from empresa;


# TABELA FORNECEDOR

CREATE TABLE IF NOT EXISTS fornecedor (
    id_fornecedor INT PRIMARY KEY AUTO_INCREMENT,
    nome varchar (100) not null,
    cnpj varchar (100) not null unique,
    telefone varchar (100) not null unique,
    email varchar (100) not null unique
);

insert into fornecedor (
nome,
cnpj,
telefone,
email
) values (
'EgoRae',
'78.153.906/0007-22',
'(11) 5623-7519',
'fornecedoregorae@outlook.com'
);

select * from fornecedor;


# TABELA ESTOQUE

CREATE TABLE IF NOT EXISTS estoque (
id_estoque INT PRIMARY KEY AUTO_INCREMENT,
quantidade_total int default 0

);

select * from estoque;

# TABELA JOGO

CREATE TABLE IF NOT EXISTS jogo (
id_jogo INT PRIMARY KEY AUTO_INCREMENT,
titulo varchar (100) not null,
ano_lancamento date not null,
plataforma varchar (100) not null

);

insert into jogo (
titulo,
ano_lancamento,
plataforma

) values 
 ('The Last Of Us', '2013-06-14', 'Playstation'),
 ('Good Of War', '2005-03-22', 'Playstation'),
 ('Forza Horazion', '2012-10-23', 'Playstation'),
 ('Mortal Kombat 11', '2019-04-19', 'Playstation/Xbox'),
 ('Red Dead Redemption 2', '2018-10-26', 'Playstation/Xbox'),
 ('World of Warcraft','2004-11-23', 'PC' ),
 ('The Witcher 3: Wild Hunt', '2015-05-19','Playstation/Xbox'),
 ('The Legend of Zelda: Breath of the Wild', '2017-03-03', 'Nitendo'),
 ('FIFA 24', '2023-09-29', 'Playstation/Xbox'),
 ('Resident Evil 4 Remake', '2023-03-24', 'Playstation/Xbox');

select * from jogo; 

# TABELA GENERO

CREATE TABLE IF NOT EXISTS genero (
id_genero INT PRIMARY KEY AUTO_INCREMENT,
tipo_jogo varchar (100)

);

insert into genero (
tipo_jogo

) values 
('fps'), 
('luta'), 
('acao'),
('infantil'), 
('tps'), 
('mmo'), 
('rpg'), 
('aventura'), 
('esporte'),
('terror');

 
select * from genero;

CREATE TABLE IF NOT EXISTS cliente (
id_cliente INT PRIMARY KEY AUTO_INCREMENT,
nome varchar(100) not null,
email varchar (100) not null unique,
telefone varchar (20) not null unique,
cpf varchar (20) not null unique,
idade int (3)

); 


 
