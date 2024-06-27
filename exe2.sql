CREATE DATABASE db_lojaomulti;
use db_lojaomulti;

CREATE TABLE tb_produtos(
id BIGINT auto_increment,
nome VARCHAR(100) not null,
estoque int,
valor decimal(7,2)not null,
setor VARCHAR(100),
PRIMARY KEY(id)
);

INSERT INTO tb_produtos(nome, estoque, valor, setor)
VALUES("Liquidificador", 15, 150.00, "Eletro-Domésticos"),
("Mesa 4 Cadeiras", 20, 530.00, "Móveis"),
("Forno Elétrico", 50, 300.00, "Eletro-Domésticos"),
("Sofá", 8, 1500.00, "Móveis"),
("Armário Cozinha", 40, 600.00, "Móveis"),
("x-box One", 100, 3500.00, "Eletrônicos"),
("Luminária de Mesa", 80, 50.00, "Eletrônicos"),
("Máquina de lavar", 60, 2000.00, "Eletro-Domésticos");

SELECT * FROM tb_produtos WHERE valor > 500;
SELECT * FROM tb_produtos WHERE valor < 500;

UPDATE tb_produtos SET valor = 60.00 WHERE id = 7;
