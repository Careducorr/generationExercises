CREATE DATABASE db_generation_game_online;
USE db_generation_game_online;

CREATE TABLE tb_classes(
id INT auto_increment primary key,
classe VARCHAR(100),
especial VARCHAR(100)
);

CREATE TABLE tb_personagens(
id BIGINT auto_increment PRIMARY KEY,
nome VARCHAR(100) not null,
elemento VARCHAR(50),
ataque INT,
defesa INT,
id_classe INT
);

ALTER TABLE tb_personagens ADD CONSTRAINT fk_tb_personagens FOREIGN KEY (id_classe) REFERENCES tb_classes(id);

INSERT INTO tb_classes(classe, especial)
VALUES ('Guerreiro', 'Força'),
    ('Mago', 'Mágica'),
    ('Arqueiro', 'Ataque a distância'),
    ('Lutador', 'Força'),
    ('Sacerdote', 'Suporte');


INSERT INTO tb_personagens (nome, elemento, ataque, defesa, id_classe) VALUES
    ('Herói', 'Terra', 3000, 1500, 1),
    ('Feiticeira', 'Ar', 2500, 2800, 2),
    ('Luthen', 'Natureza', 1500, 2800, 3),
    ('Bárbaro', 'Terra', 2900, 1600, 1),
    ('Mestre das Sombras', 'Fogo', 2500, 2500, 4),
    ('Mago', 'Água', 1600, 3000, 2),
    ('Guardião', 'Fogo', 1900, 3000, 5),
    ('Encantador', 'Água', 1900, 3000, 5);
    
    select * from tb_personagens where ataque > 2000;
    select * from tb_personagens where defesa between 1000 and 2000;
    select * from tb_personagens where nome like '%C%';
    select * from tb_personagens inner join tb_classes on tb_classes.id = tb_personagens.id_classe;
    
    select tb_personagens.nome, tb_classes.classe from tb_personagens
    inner join tb_classes 
    on tb_classes.id = tb_personagens.id_classe
    where tb_personagens.id_classe = 3;