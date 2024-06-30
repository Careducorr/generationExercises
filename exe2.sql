create database db_pizzaria_legal;
use db_pizzaria_legal;

create table tb_categorias(
id BIGINT auto_increment PRIMARY KEY,
tipo VARCHAR(50),
descricao VARCHAR(200)
);

create table tb_pizzas(
id BIGINT auto_increment PRIMARY KEY,
nome VARCHAR (50),
ingredientes VARCHAR(200),
valor DECIMAL(7,2) not null,
id_categoria BIGINT,
FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias(tipo, descricao)
VALUES("Doce", "Pizzas com ingredientes doces"),
("Salgada", "Pizzas com ingredientes salgados"),
("Vegetariana", "Pizzas sem carne, apenas com vegetais"),
("Mista", "Pizza salgada com borda doce"),
("Brotinho", "Pizza com tamanhos especiais");

INSERT INTO tb_pizzas (nome, ingredientes, valor, id_categoria) 
VALUES ('Margherita', 'Molho de tomate, muçarela, manjericão fresco', 42.90, 2),
('Quatro Queijos', 'Muçarela, gorgonzola, parmesão e provolone', 48.50, 2),
('Brigadeiro', 'Chocolate, leite condensado e granulado', 35.00, 1),
('Vegetariana', 'Muçarela, tomate, cebola, pimentão, azeitonas', 39.90, 3),
('Calabresa', 'Molho de tomate, muçarela, calabresa fatiada', 38.00, 2),
('Calabresa Brotinho', 'Frango desfiado, catupiry, milho verde', 25.50, 5),
('Margarita', 'Molho de tomate, muçarela, manjericão fresco, borda de Nutella', 55.00, 4),
('Banana com Chocolate', 'Banana, chocolate ao leite e granulado', 32.00, 1);

select * from tb_pizzas where valor > 45;
select * from tb_pizzas where valor between 50.00 and 100.00;
select * from tb_pizzas where nome like "%M%";
select * from tb_pizzas inner join tb_categorias on tb_categorias.id = tb_pizzas.id_categoria;

select tb_pizzas.nome, tb_categorias.tipo from tb_pizzas 
inner join tb_categorias on tb_categorias.id = tb_pizzas.id_categoria 
where tb_categorias.id = 2; -- essa pesquisa exibe todas as pizzas salgadas