CREATE DATABASE db_escolageral;
USE db_escolageral;

CREATE TABLE tb_alunos(
id BIGINT auto_increment,
nome VARCHAR(100) not null,
serie VARCHAR(15),
bolsista BOOLEAN,
media DECIMAL(4,1),
PRIMARY KEY(id)
);

INSERT INTO tb_alunos(nome, serie, bolsista)
VALUES("Carlos Correia", "8° Ano", true),
("Pedro Henrique", "9° Ano", false),
("Henrique Correia", "7° Ano", false),
("Alex da Hora", "6° Ano", true),
("Carol Santos", "8° Ano", true),
("Jamily Macedo", "9° Ano", false),
("Emílio Cândido", "7° Ano", false),
("João da Silva", "6° Ano", false);

create table tb_mediaalunos(
id BIGINT auto_increment PRIMARY KEY,
nota1 decimal(4,1),
nota2 decimal(4,1),
nota3 decimal(4,1),
media decimal(4,1)
);

INSERT INTO tb_mediaalunos(nota1,nota2,nota3,media)
VALUES(8.5,9,7,(nota1 + nota2 + nota3) / 3),
(7,5.5,10,(nota1 + nota2 + nota3) / 3),
(5,8.5,3,(nota1 + nota2 + nota3) / 3),
(10,9,8.5,(nota1 + nota2 + nota3) / 3),
(9.3,9.2,8,(nota1 + nota2 + nota3) / 3),
(3,6.4,7.5,(nota1 + nota2 + nota3) / 3),
(7.3,9,6.4,(nota1 + nota2 + nota3) / 3),
(6,9,7.3,(nota1 + nota2 + nota3) / 3);

ALTER TABLE tb_alunos ADD COLUMN id_mediaaluno BIGINT,
ADD CONSTRAINT fk_mediaalunos FOREIGN KEY (id_mediaaluno) REFERENCES tb_mediaalunos(id);

UPDATE tb_alunos SET id_mediaaluno = 1 WHERE id = 1;
UPDATE tb_alunos SET id_mediaaluno = 2 WHERE id = 2;
UPDATE tb_alunos SET id_mediaaluno = 3 WHERE id = 3;
UPDATE tb_alunos SET id_mediaaluno = 4 WHERE id = 4;
UPDATE tb_alunos SET id_mediaaluno = 5 WHERE id = 5;
UPDATE tb_alunos SET id_mediaaluno = 6 WHERE id = 6;
UPDATE tb_alunos SET id_mediaaluno = 7 WHERE id = 7;
UPDATE tb_alunos SET id_mediaaluno = 8 WHERE id = 8;

UPDATE tb_alunos a JOIN tb_mediaalunos m ON a.id_mediaaluno = m.id SET a.media = m.media;
-- A última linha fz com que o campo media de tb_alunos seja atualizado com os campos de media de tb_mediaalunos
-- Para esse Update final funcionar, deve-se desativar o modo Safe Mode do MySql Workbench (update/delete)
-- Pois em sua configuração padrão, ele só aceita combinar chaves primárias de outras tabelas.
-- ou podemos inserir manualmente os valores de tb_anulos.media com os valores de tb_mediaalunos.media

SELECT * FROM tb_alunos WHERE media >7.0;
SELECT * FROM tb_alunos WHERE media <7.0;
UPDATE tb_alunos set bolsista = true where id = 2;