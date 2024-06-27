CREATE DATABASE db_quitanda; /*cria a base de dados*/
USE db_quitanda; /*indica qual banco de dados usar, geralmente usa esse comando quando fechamos e abrimos o mysql*/

/*cria uma tabela. (as colunas são chamadas de campos) As linhas das tabelas são chamadas de registros*/
CREATE TABLE tb_produtos ( 
id BIGINT auto_increment,
nome varchar(255) not null, /*not null é uma cláusula do campo "nome" que indica ser um dado obrigatório*/
quantidade int,
datavalidade date,
preco decimal not null, /*também é um campo obrigatório*/
primary key (id)/*Para executar e criar a tabela e seus respectivos campos, selecione a linha 5 até a 11 e execute.*/
);

SELECT * from tb_produtos; /*ao executar essa linha vemos todos os campos no Result Grid, para ver apenas um campo colocamos o nome dele apos o select*/
/*Inserindo dados (registros) nos campos (Colunas)*/
INSERT INTO tb_produtos(nome, quantidade, datavalidade, preco)
VALUES ("Morango",200,"2024-08-01",8.00),
("Abacaxi",500,"2024-09-01",13.00),
("Melancia",50,"2024-10-01",20.00),
("Abacate",60,"2024-11-01",10.00); /*para executar seleciona a linha 16 ate a 20 e executa no raio*/

