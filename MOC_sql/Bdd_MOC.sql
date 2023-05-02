DROP DATABASE IF EXISTS myowncity;
CREATE DATABASE IF NOT EXISTS myowncity;
USE myowncity;


CREATE TABLE Cidade (
id_cid INT NOT NULL auto_increment,
    nome_cid VARCHAR(50) NOT NULL,
    estado VARCHAR(2) NOT NULL,
    PRIMARY KEY (id_cid)
)
ENGINE=InnoDB;

CREATE TABLE Bairro (
    id_bair INT NOT NULL auto_increment,
    id_cid INT NOT NULL,
    nome_bair VARCHAR(50) NOT NULL,
    casa BOOLEAN NOT NULL,
    movimentacao BOOLEAN NOT NULL,
    pref_geo VARCHAR(50) NOT NULL,
    FOREIGN KEY (id_cid) references Cidade(id_cid),
    PRIMARY KEY (id_bair)
)
ENGINE=InnoDB;

CREATE TABLE Empresa (
id_emp INT NOT NULL auto_increment,
    id_bair INT NOT NULL,
    nome_emp VARCHAR(100) NOT NULL,
    area VARCHAR(50) NOT NULL,
    FOREIGN KEY (id_bair) references Bairro(id_bair),
    PRIMARY KEY (id_emp)
)
ENGINE=InnoDB;


CREATE TABLE Usuario (
    id_usu INT NOT NULL auto_increment,
    nome_usu VARCHAR(50) NOT NULL,
    login VARCHAR(50) NOT NULL,
    senha VARCHAR(50) NOT NULL,
    RG VARCHAR(50) NOT NULL,
    formacao_usu VARCHAR(50) NOT NULL,
    email_usu VARCHAR(50) NOT NULL,
    movimentacao_usu BOOLEAN NOT NULL,
    pref_geo_usu VARCHAR(50) NOT NULL,
    PRIMARY KEY (id_usu)
) 
ENGINE=InnoDB;

CREATE TABLE Usuario_site (
    id_ususite INT NOT NULL auto_increment,
    nome_ususite VARCHAR(50) NOT NULL,
    login_site VARCHAR(50) NOT NULL,
    senha_site VARCHAR(50) NOT NULL,
    PRIMARY KEY (id_ususite)
) 
ENGINE=InnoDB;




INSERT INTO Cidade (nome_cid,estado) VALUES ('S�o Paulo','SP');    
INSERT INTO Cidade (nome_cid,estado) VALUES ('Campinas','SP');
INSERT INTO Cidade (nome_cid,estado) VALUES ('S�o Jo�o da Boa Vista','SP');

INSERT INTO Bairro (id_cid, nome_bair, casa, movimentacao, pref_geo) VALUES (1, 'Liberdade', 0, 1, 'Metro');
INSERT INTO Empresa (id_bair, nome_emp, area) VALUES (1, 'P� de Fava',  'Servi�os gerais');
INSERT INTO Bairro (id_cid, nome_bair, casa, movimentacao, pref_geo) VALUES (1, 'Ibirapuera', 1, 1, 'Pra�a');
INSERT INTO Empresa (id_bair, nome_emp, area) VALUES (2, 'Heros Burguer', 'Servi�os gerais');
INSERT INTO Bairro (id_cid, nome_bair, casa, movimentacao, pref_geo) VALUES (1, 'Br�s', 1, 1, 'Shopping');
INSERT INTO Empresa (id_bair, nome_emp, area) VALUES (3, 'Santa Casa', 'Sa�de');
       
INSERT INTO Bairro (id_cid, nome_bair, casa, movimentacao, pref_geo) VALUES (2,'Guanabara', 1, 1, 'Shopping');
INSERT INTO Empresa (id_bair, nome_emp, area)  VALUES (4, 'Escola Estadual Coronel Henrique Afonso', 'Funcion�rio p�blico');
INSERT INTO Bairro (id_cid, nome_bair, casa, movimentacao, pref_geo) VALUES (2, 'Doutor Josu�', 1, 0, 'Pra�a');
INSERT INTO Empresa (id_bair, nome_emp, area)  VALUES (5, 'Construtora M�o na Massa', 'Exatas');
INSERT INTO Bairro (id_cid, nome_bair, casa, movimentacao, pref_geo) VALUES (2,'Arara Azul', 0, 1, 'Shopping');
INSERT INTO Empresa (id_bair, nome_emp, area)  VALUES (6, 'Floricultura Bela Rosa', 'Servi�os gerais');
       
INSERT INTO Bairro (id_cid, nome_bair, casa, movimentacao, pref_geo) VALUES (3, 'Centro', 1, 1, 'Cinema');
INSERT INTO Empresa (id_bair, nome_emp, area)  VALUES (7, 'INFO CENTRO', 'Inform�tica');
INSERT INTO Bairro (id_cid, nome_bair, casa, movimentacao, pref_geo) VALUES (3, 'Hotel S�o Jorge', 1, 1, 'Metro');
INSERT INTO Empresa (id_bair, nome_emp, area)  VALUES (8, 'Droga Baiacu', 'Biol�gicas');
INSERT INTO Bairro (id_cid, nome_bair, casa, movimentacao, pref_geo) VALUES (3, 'Zona Sulista', 0, 0, 'Cinema');
INSERT INTO Empresa (id_bair, nome_emp, area)  VALUES (9, '�ticas Carolina', 'Servi�os gerais');







INSERT INTO Cidade (nome_cid,estado) VALUES ('Ven�ncio Aires','RS');  
INSERT INTO Cidade (nome_cid,estado) VALUES ('Cruz Alta','RS');  
INSERT INTO Cidade (nome_cid,estado) VALUES ('Porto Alegre','RS');
     
INSERT INTO Bairro (id_cid, nome_bair, casa, movimentacao, pref_geo) VALUES (4, 'Coronel Hernesto', 0, 1, 'Pra�a');
INSERT INTO Empresa (id_bair, nome_emp, area)  VALUES (10, 'Doutor Postura', 'Sa�de');
INSERT INTO Bairro (id_cid, nome_bair, casa, movimentacao, pref_geo) VALUES (4, 'Capit�o Americo', 0, 0, 'Pra�a');
INSERT INTO Empresa (id_bair, nome_emp, area)  VALUES (11, 'Oficina do Z�', 'Servi�os gerais');
INSERT INTO Bairro (id_cid, nome_bair, casa, movimentacao, pref_geo) VALUES (4, 'Maria Fuma�a', 1, 1, 'Metro');
INSERT INTO Empresa (id_bair, nome_emp, area)  VALUES (12, 'Oficina do Celular', 'Inform�tica');
       
INSERT INTO Bairro (id_cid, nome_bair, casa, movimentacao, pref_geo) VALUES (5, 'Olaia', 0, 0, 'Pra�a' );
INSERT INTO Empresa (id_bair, nome_emp, area)  VALUES (13, 'Martelinho de ouro Santa Hort�ncia', 'Servi�os gerais');
INSERT INTO Bairro (id_cid, nome_bair, casa, movimentacao, pref_geo) VALUES (5, 'Saldanha', 1, 1, 'Shopping' );
INSERT INTO Empresa (id_bair, nome_emp, area)  VALUES (14, '�tica Boa Vista', 'Sa�de');
INSERT INTO Bairro (id_cid, nome_bair, casa, movimentacao, pref_geo) VALUES (5, 'Pagu', 0, 1, 'Cinema' );
INSERT INTO Empresa (id_bair, nome_emp, area)  VALUES (15, 'Coca-Cola Cruz Alta', 'Exatas');
         
INSERT INTO Bairro (id_cid, nome_bair, casa, movimentacao, pref_geo) VALUES (6, 'Santa Terezinha', 1, 0, 'Cinema');
INSERT INTO Empresa (id_bair, nome_emp, area)  VALUES (16, 'Cristal Moda', 'Inform�tica');
INSERT INTO Bairro (id_cid, nome_bair, casa, movimentacao, pref_geo) VALUES (6, 'S�o Tiago', 1, 1, 'Cinema');
INSERT INTO Empresa (id_bair, nome_emp, area)  VALUES (17, 'Dell Porto Alegre', 'Inform�tica');
INSERT INTO Bairro (id_cid, nome_bair, casa, movimentacao, pref_geo) VALUES (6, 'Santos', 1, 1, 'Metro');
INSERT INTO Empresa (id_bair, nome_emp, area)  VALUES (18, 'Motorola', 'Servi�os gerais');


 



INSERT INTO Cidade (nome_cid,estado) VALUES ('Belo Horizonte','MG');  
INSERT INTO Cidade (nome_cid,estado) VALUES ('Diamantina','MG');    
INSERT INTO Cidade (nome_cid,estado) VALUES ('Varginha','MG');
         
INSERT INTO Bairro (id_cid, nome_bair, casa, movimentacao, pref_geo) VALUES (7, 'Bandeirantes', 1, 1, 'Shopping');
INSERT INTO Empresa (id_bair, nome_emp, area)  VALUES (19, 'Torres Empreendedorismo','Exatas');
INSERT INTO Bairro (id_cid, nome_bair, casa, movimentacao, pref_geo) VALUES (7, 'Barra Funda', 1, 0, 'Cinema');
INSERT INTO Empresa (id_bair, nome_emp, area)  VALUES (20, 'Jo�o Elias Pet Shop', 'Biol�gicas');
INSERT INTO Bairro (id_cid, nome_bair, casa, movimentacao, pref_geo) VALUES (7, 'Sasuko', 0, 1, 'Shopping');
INSERT INTO Empresa (id_bair, nome_emp, area)  VALUES (21, 'Leonardo Pizzas', 'Inform�tica');
                     
INSERT INTO Bairro (id_cid, nome_bair, casa, movimentacao, pref_geo) VALUES (8, 'Centro', 1, 1, 'Metro');
INSERT INTO Empresa (id_bair, nome_emp, area)  VALUES (22, 'Batatas Ot�vio', 'Servi�os gerais');
INSERT INTO Bairro (id_cid, nome_bair, casa, movimentacao, pref_geo) VALUES (8, 'Borut�', 1, 0, 'Metro');
INSERT INTO Empresa (id_bair, nome_emp, area)  VALUES (23, 'HQ Marcelin ', 'Exatas');
INSERT INTO Bairro (id_cid, nome_bair, casa, movimentacao, pref_geo) VALUES (8, 'Sakuri', 1, 0, 'Pra�a');
INSERT INTO Empresa (id_bair, nome_emp, area)  VALUES (24, 'Editora Venturelli', 'Inform�tica');
                     
INSERT INTO Bairro (id_cid, nome_bair, casa, movimentacao, pref_geo) VALUES (9, 'Avenida S�o Louren�o', 0, 1, 'Pra�a');
INSERT INTO Empresa (id_bair, nome_emp, area)  VALUES (25, 'Cirtos Vapes', 'Humanas');
INSERT INTO Bairro (id_cid, nome_bair, casa, movimentacao, pref_geo) VALUES (9, 'Avenida Brasil', 0, 1, 'Metro');
INSERT INTO Empresa (id_bair, nome_emp, area)  VALUES (26, 'Queijo de Minas', 'Servi�os gerais');
INSERT INTO Bairro (id_cid, nome_bair, casa, movimentacao, pref_geo) VALUES (9, 'Cacaxi', 0, 1, 'Pra�a');
INSERT INTO Empresa (id_bair, nome_emp, area)  VALUES (27, 'Farm�cia do Z�', 'Sa�de');





INSERT INTO Cidade (nome_cid,estado) VALUES ('Angra dos Reis','RJ');
INSERT INTO Cidade (nome_cid,estado) VALUES ('Rio de Janeiro','RJ');
INSERT INTO Cidade (nome_cid,estado) VALUES ('Duque de Caxias','RJ');
                   
INSERT INTO Bairro (id_cid, nome_bair, casa, movimentacao, pref_geo) VALUES (10, 'Prata', 1, 0, 'Cinema');
INSERT INTO Empresa (id_bair, nome_emp, area)  VALUES (28, 'Sabor da Prais', 'Servi�os gerais');
INSERT INTO Bairro (id_cid, nome_bair, casa, movimentacao, pref_geo) VALUES (10, 'Atari', 1, 1, 'Metro');
INSERT INTO Empresa (id_bair, nome_emp, area)  VALUES (29, 'Jacquinput A�o ', 'Exatas');
INSERT INTO Bairro (id_cid, nome_bair, casa, movimentacao, pref_geo) VALUES (10, 'Morumbi', 0, 0, 'Pra�a');
INSERT INTO Empresa (id_bair, nome_emp, area)  VALUES (30, 'Montreal Magazine','Inform�tica');
             
INSERT INTO Bairro (id_cid, nome_bair, casa, movimentacao, pref_geo) VALUES (11, 'Lebron', 0, 1, 'Shopping');
INSERT INTO Empresa (id_bair, nome_emp, area)  VALUES (31, 'Burguer King', 'Servi�os gerais');
INSERT INTO Bairro (id_cid, nome_bair, casa, movimentacao, pref_geo) VALUES (11, 'Barra da Tijuca', 1, 1, 'Shopping');
INSERT INTO Empresa (id_bair, nome_emp, area)  VALUES (32, 'Anglu', 'Humanas');
INSERT INTO Bairro (id_cid, nome_bair, casa, movimentacao, pref_geo) VALUES (11, 'Boca Grande', 0, 1, 'Metro');
INSERT INTO Empresa (id_bair, nome_emp, area)  VALUES (33, 'Biblioteca Marilia Mendon�a', 'Humanas');
               
INSERT INTO Bairro (id_cid, nome_bair, casa, movimentacao, pref_geo) VALUES (12, 'Centro Industrial', 0, 0, 'Metro');
INSERT INTO Empresa (id_bair, nome_emp, area) VALUES (34, 'Biblioteca Duque de Caxias', 'Humanas');
INSERT INTO Bairro (id_cid, nome_bair, casa, movimentacao, pref_geo) VALUES (12, 'Centro', 1, 1, 'Pra�a');
INSERT INTO Empresa (id_bair, nome_emp, area) VALUES (35, 'Prefeitura de Duque de Caxias', 'Biol�gicas');
INSERT INTO Bairro (id_cid, nome_bair, casa, movimentacao, pref_geo) VALUES (12, 'Raicais', 1, 0, 'Cinema');
INSERT INTO Empresa (id_bair, nome_emp, area)  VALUES (36, 'Legi�o Rural', 'Biol�gicas');







INSERT INTO Cidade (nome_cid,estado) VALUES ('Joinville','SC');
INSERT INTO Cidade (nome_cid,estado) VALUES ('Blumenau','SC');
INSERT INTO Cidade (nome_cid,estado) VALUES ('Florian�polis','SC');
                     
INSERT INTO Bairro (id_cid, nome_bair, casa, movimentacao, pref_geo) VALUES (13, 'Tup� Rei', 1, 1, 'Cinema');
INSERT INTO Empresa (id_bair, nome_emp, area)  VALUES (37, 'Apple Joinville', 'Inform�tica');
INSERT INTO Bairro (id_cid, nome_bair, casa, movimentacao, pref_geo) VALUES (13, 'Guarana', 1, 1, 'Cinema');
INSERT INTO Empresa (id_bair, nome_emp, area)  VALUES (38, 'Banco Ita�', 'Exatas');
INSERT INTO Bairro (id_cid, nome_bair, casa, movimentacao, pref_geo) VALUES (13, 'Sebasti�o', 0, 1, 'Metro');
INSERT INTO Empresa (id_bair, nome_emp, area)  VALUES (39, 'Bittencourt Cursinhos', 'Exatas');
                       
INSERT INTO Bairro (id_cid, nome_bair, casa, movimentacao, pref_geo) VALUES (14, 'Joaquim Pereira', 1, 0, 'Pra�a');
INSERT INTO Empresa (id_bair, nome_emp, area)  VALUES (40, 'Floricultura do Lolincoln', 'Biol�gicas');
INSERT INTO Bairro (id_cid, nome_bair, casa, movimentacao, pref_geo) VALUES (14, 'Joaquim Jos�', 1, 1, 'Pra�a');
INSERT INTO Empresa (id_bair, nome_emp, area)  VALUES (41, 'Vem Jogar LavFranscisco','Inform�tica');
INSERT INTO Bairro (id_cid, nome_bair, casa, movimentacao, pref_geo) VALUES (14, 'Virgem Maria', 0, 0, 'Pra�a');
INSERT INTO Empresa (id_bair, nome_emp, area)  VALUES (42, 'Pousada do Marcin', 'Exatas');
                 
INSERT INTO Bairro (id_cid, nome_bair, casa, movimentacao, pref_geo) VALUES (15, 'Sebasti�o Almeida', 0, 1, 'Shopping');
INSERT INTO Empresa (id_bair, nome_emp, area)  VALUES (43, 'Parkour Park', 'Humanas');
INSERT INTO Bairro (id_cid, nome_bair, casa, movimentacao, pref_geo) VALUES (15, 'Benetida Arauja', 1, 1, 'Cinema');
INSERT INTO Empresa (id_bair, nome_emp, area)  VALUES (44, 'Faze Br', 'Inform�tica');
INSERT INTO Bairro (id_cid, nome_bair, casa, movimentacao, pref_geo) VALUES (15, 'Jo�o Elias', 0, 1, 'Pra�a');
INSERT INTO Empresa (id_bair, nome_emp, area)  VALUES (45, 'Farm�cia Russa', 'Sa�de');
