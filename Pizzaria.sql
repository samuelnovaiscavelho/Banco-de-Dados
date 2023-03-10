CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categorias(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    tipo VARCHAR(255),
    tamanho VARCHAR(255)
);

CREATE TABLE tb_pizzas(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255),
    ingredientes VARCHAR(255),
    borda VARCHAR(255),
    preco DECIMAL(5,2),
    categoria_id BIGINT,
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias (tipo, tamanho) 
VALUES ("Salgada","Brotinho"),
("Salgada","Normal"),
("Salgada","Big"),
("Doce","Brotinho"),
("Doce","Normal"),
("Doce", "Big");

INSERT INTO tb_pizzas (nome, ingredientes, borda, preco, categoria_id)
VALUES ("MARGUERITA", "Molho de tomate, Mussarela e Manjericão", "Requeijão", 19.90, 1),
("FRANGO COM CATUPIRY", "Molho de tomate, Frango desfiado e Catupiry", "Cheddar", 59.90, 2),
("BACON", "Molho de tomate, Mussarela e Bacon", "Requeijão", 109.90, 3),
("PIZZAIOLO", "Molho de tomate, Mussarela, Peito de peru, Bacon, Tomate e Catupiry", "Requeijão", 119.90, 3),
("FRANGO COM BARBECUE", "Molho de tomate, Frango desfiado, Cream Cheese, Barbecue", "Requeijão", 59.90, 2),
("CHARGE", "Chocolate ao leite, caramelo e amendoim ", "Chocolate ao leite", 59.90, 2),
("MERENGUE", "Chocolate branco, suspiro e morango", "Chocolate branco", 100.90, 3),
("CHOCOLATE COM MORANGO", "Chocolate branco e morangos picados", "Chocolate branco", 29.90, 1);

SELECT * FROM tb_pizzas WHERE preco > 45.00;

SELECT * FROM tb_pizzas WHERE preco BETWEEN 50 AND 100;

SELECT * FROM tb_pizzas WHERE nome LIKE "%M%";

SELECT * FROM tb_pizzas INNER JOIN tb_categorias ON tb_categorias.id = tb_pizzas.categoria_id;

SELECT * FROM tb_pizzas INNER JOIN tb_categorias ON tb_categorias.id = tb_pizzas.categoria_id
WHERE tb_categorias.tipo = "Doce";