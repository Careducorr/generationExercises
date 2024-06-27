create database db_colaboradores;
use db_colaboradores;

create table tb_info_colaboradores(
id BIGINT auto_increment,
nome varchar(100) not null,
setor varchar(50),
salario decimal(7,2) not null,
data_inicio date not null,
primary key (id)
);

insert into tb_info_colaboradores(nome, setor, salario, data_inicio)
values("Pedro Henrique", "Logística", 1900.00, "2021-07-03"),
("Henrique Correia", "Compras", 2100.00, "2021-08-01"),
("Carlos Eduardo", "TI", 5000.00, "2024-01-01"),
("Carol Santos", "Administrativo", 6000.00, "2021-02-01"),
("Jonnathan Teixeira", "TI", 10000.00, "2023-05-01"),
("Diego Costa", "Logística", 1950.00, "2021-08-03"),
("Cristiano", "Compras", 2300.00, "2021-02-01");

SELECT * FROM tb_info_colaboradores WHERE salario > 2000.00; /*Esta query faz com que retorne todos os colaboradores com salário acima de 2K*/
SELECT * FROM tb_info_colaboradores WHERE salario < 2000.00; /*Esta query faz com que retorne todos os colaboradores com salário menor que 2K*/
UPDATE tb_info_colaboradores SET salario = 2000.00 WHERE id = 1;
