CREATE DATABASE locadora_de_games;
USE locadora_de_games;

# ==================================================== LADO (1,1) ====================================================

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
) values 
('Locadora de Games', 'Bizarro Games', '30.157.936/0001-20'),
('TechPlay Soluções LTDA', 'TechPlay', '12.345.678/0001-90'),
('Infinity Games S/A', 'Infinity', '98.765.432/0001-12'),
('Pixel Fun LTDA', 'Pixel Fun', '11.223.344/0001-55'),
('GameHouse Brasil LTDA', 'GameHouse', '22.334.556/0001-77'),
('Level Up Entretenimento LTDA', 'Level Up', '33.445.667/0001-88'),
('Joystick Criativo LTDA', 'Joystick', '44.556.778/0001-99'),
('Gamer World S/A', 'Gamer World', '55.667.889/0001-11'),
('PlayZone LTDA', 'PlayZone', '66.778.990/0001-22'),
('NextGen Games LTDA', 'NextGen', '77.889.001/0001-33');

select *from empresa;




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
) values 
('EgoRae','78.153.906/0007-22','(11) 5623-7519','fornecedoregorae@outlook.com'),
('Sony Interactive Entertainment', '25.867.432/0001-90', '+1 (213) 555-4827', 'fornecedorasony@outlook.com'),
('PixelPlay Distribuidora', '12.345.678/0001-10', '+1 (213) 555-1010', 'contato@pixelplay.com'),
('LevelUp Games Supply', '23.456.789/0001-22', '+1 (305) 555-2020', 'vendas@levelupgames.com'),
('GameZone Imports', '34.567.890/0001-33', '+1 (415) 555-3030', 'sales@gamezoneimports.com'),
('NextGen Games BR', '45.678.901/0001-44', '+1 (646) 555-4040', 'contato@nextgengames.com'),
('PowerUp Distribuidora LTDA', '56.789.012/0001-55', '+1 (702) 555-5050', 'atendimento@powerup.com'),
('DigitalXP Games', '67.890.123/0001-66', '+1 (408) 555-6060', 'suporte@digitalxp.com'),
('Nova Era Interactive', '78.901.234/0001-77', '+1 (312) 555-7070', 'info@novaerainteractive.com'),
('TopPlayer Fornecimentos', '89.012.345/0001-88', '+1 (617) 555-8080', 'contato@topplayer.com');

select * from fornecedor;




CREATE TABLE IF NOT EXISTS estoque (
id_estoque INT PRIMARY KEY AUTO_INCREMENT,
quantidade_total int default 0

);

insert into estoque (
quantidade_total

) values

(25),
(40),
(15),
(60),
(100),
(5),
(12),
(80),
(33),
(50);

select * from estoque;


CREATE TABLE IF NOT EXISTS cliente (
id_cliente INT PRIMARY KEY AUTO_INCREMENT,
nome varchar(100) not null,
email varchar (100) not null unique,
telefone varchar (20) not null unique,
cpf varchar (20) not null unique,
idade int (3)

); 

insert into cliente (
nome,
 email,
 telefone,
 cpf, 
 idade
 ) values 
('Henrique Almeida', 'henrique.almeida@email.com', '(11) 98876-1234', '123.456.789-00', 25),
('Mariana Souza', 'mariana.souza@email.com', '(21) 99754-2231', '234.567.890-11', 30),
('Lucas Pereira', 'lucas.pereira@email.com', '(31) 98645-3342', '345.678.901-22', 27),
('Fernanda Lima', 'fernanda.lima@email.com', '(41) 98432-4453', '456.789.012-33', 22),
('Rafael Santos', 'rafael.santos@email.com', '(51) 98210-5564', '567.890.123-44', 29),
('Beatriz Carvalho', 'beatriz.carvalho@email.com', '(61) 98111-6675', '678.901.234-55', 24),
('Gustavo Oliveira', 'gustavo.oliveira@email.com', '(71) 98922-7786', '789.012.345-66', 31),
('Camila Rocha', 'camila.rocha@email.com', '(81) 98733-8897', '890.123.456-77', 26),
('Thiago Martins', 'thiago.martins@email.com', '(85) 98544-9908', '901.234.567-88', 28),
('Isabela Fernandes', 'isabela.fernandes@email.com', '(91) 98355-1019', '012.345.678-99', 23);

select * from  cliente;

CREATE TABLE IF NOT EXISTS pedido (
id_pedido INT PRIMARY KEY AUTO_INCREMENT,
descricao_pedido varchar (100) not null unique,
data_pedido date not null

);

CREATE TABLE IF NOT EXISTS pagamento (
id_pagamento INT PRIMARY KEY AUTO_INCREMENT,
data_pagamento datetime,
valor_pagamento varchar (10)

);

CREATE TABLE IF NOT EXISTS endereco (
id_endereco INT PRIMARY KEY AUTO_INCREMENT,
cep varchar (30) not null unique,
cidade varchar (30) not null,
logradouro varchar (30),
bairro varchar (30) not null unique,
numero int,
complemento varchar (50)

);


# ==================================================== LADO (0,n) ====================================================

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

CREATE TABLE IF NOT EXISTS formapagamento (

id_formapagamento INT PRIMARY KEY AUTO_INCREMENT,
debito int,
credito int,
pix int

);

