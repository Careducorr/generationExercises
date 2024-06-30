create database db_cidade_das_carnes;
use db_cidade_das_carnes;

CREATE TABLE tb_categorias (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome_categoria VARCHAR(100) NOT NULL,
    descricao VARCHAR(255)
);

CREATE TABLE tb_produtos (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    descricao VARCHAR(255),
    valor DECIMAL(6, 2),
    id_categoria INT,
    FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias (nome_categoria, descricao) VALUES
    ('Bovinas', 'Carnes origonárias de bois'),
    ('Aves', 'Carnes de aves'),
    ('Ovos', 'Todos os tipos de ovos'),
    ('Suínas', 'Todos os tipos de carne suína'),
    ('Peixes', 'Todos os tipos de peixes');
    
    INSERT INTO tb_produtos(nome, descricao, valor, id_categoria)
    VALUES("Acém", "Um tipo de carne magra, correspondente ao lombo do boi", 51.00, 1),
    ("Peito frango", "Um tipo de carne protéica, proveniente de frangos", 35.00, 2),
    ("Filé mignon", "Um corte de carne bovina altamente valorizado por sua maciez e sabor suave", 75.00, 1),
    ("Bandeja ovos", "30 Ovos brancos de galinha", 28.00, 3),
    ("Bife pernil", "O pernil de porco é uma proteína deliciosa", 39.00, 4),
	("Salmão", "Uma das carnes de peixe mais saborosas", 80.00, 5),
	("Frango inteiro", "Um frango inteiro para várias receitas", 30.00, 2),
	("Contra-filé", "Mais longo corte bovino, o contrafilé é retirado do lombo do animal", 65.00, 1);
    
select * from tb_produtos where valor >50.00;
select * from tb_produtos where valor between 50.00 and 150.00;
select * from tb_produtos where nome like "%C%";

select * from tb_produtos inner join tb_categorias on tb_categorias.id = tb_produtos.id_categoria;
    
select tb_produtos.nome, tb_categorias.nome_categoria from tb_produtos 
inner join tb_categorias on tb_categorias.id = tb_produtos.id_categoria
where tb_categorias.id = 2;