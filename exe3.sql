create database db_farmacia_bem_estar;
use db_farmacia_bem_estar;

CREATE TABLE tb_categoria (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome_categoria VARCHAR(100) NOT NULL,
    descricao VARCHAR(255)
);

CREATE TABLE tb_produtos (
    id_produto BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    descricao TEXT,
    valor DECIMAL(6, 2),
    id_categoria INT,
    FOREIGN KEY (id_categoria) REFERENCES tb_categoria(id)
);

INSERT INTO tb_categoria (nome_categoria, descricao) VALUES
    ('Medicamentos', 'Produtos voltados para a saúde e tratamentos médicos'),
    ('Higiene Pessoal', 'Produtos para cuidados pessoais e limpeza'),
    ('Cosméticos', 'Produtos de beleza e cuidados estéticos'),
    ('Suplementos Alimentares', 'Produtos para complementar a alimentação'),
    ('Cuidados com o Bebê', 'Produtos para cuidados infantis');
    
    INSERT INTO tb_produtos (nome, descricao, valor, id_categoria) VALUES
    ('Paracetamol', 'Analgésico e antitérmico', 12.50, 1),
    ('Shampoo Anticaspa', 'Shampoo para controle de caspa', 19.90, 2),
    ('Creme Hidratante Facial', 'Hidratação intensiva para o rosto', 45.00, 3),
    ('Whey Protein', 'Suplemento proteico para musculação', 99.90, 4),
    ('Lenços Umedecidos', 'Lenços para higiene infantil', 8.75, 5),
    ('Protetor Solar FPS 30', 'Protetor solar para rosto e corpo', 55.00, 3),
    ('Desodorante Roll-on', 'Desodorante em formato roll-on', 12.00, 2),
    ('Creme para Assaduras', 'Creme para prevenir e tratar assaduras', 15.50, 5);
    
select * from tb_produtos where valor >50.00;
select * from tb_produtos where valor between 5.00 and 60.00;
select * from tb_produtos where nome like "%C%";
select * from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produtos.id_categoria;
    
select tb_produtos.nome, tb_categoria.descricao, tb_produtos.valor from tb_produtos 
inner join tb_categoria on tb_categoria.id = tb_produtos.id_categoria
where tb_categoria.id = 3;