-- O nome do Banco de dados deverá ter o seguinte nome db_pizzaria_legal
CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

-- tb_categorias e determine pelo menos 2 atributos, além da Chave Primária
CREATE TABLE tb_categorias(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    tipo VARCHAR(255),
    tamanho VARCHAR(255)
);

-- tb_pizzas e determine 4 atributos, além da Chave Primária, relevantes aos produtos da pizzaria.
CREATE TABLE tb_pizzas(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255),
    ingredientes VARCHAR(255),
    borda VARCHAR(255),
    preco DECIMAL(5,2),
    id_categoria BIGINT,
    
    -- criar a Foreign Key da tabela tb_categorias na tabela tb_pizzas.
    FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id)
);

-- Insira 5 registros na tabela tb_categorias.
INSERT INTO tb_categorias (tipo, tamanho) 
VALUES ("Doce","Brotinho"),
("Doce","Normal"),
("Doce","Big"),
("Salgada","Brotinho"),
("Salgada","Normal"),
("Salgada", "Big");

-- Insira 8 registros na tabela tb_pizzas
INSERT INTO tb_pizzas (nome, ingredientes, borda, preco, id_categoria)
VALUES ("Calabresa", "Molho de tomate, Mussarela e Manjericão", "Requeijão", 22.90, 1),
("Portuguesa", "Molho de tomate, Frango desfiado e Catupiry", "Cheddar", 60.90, 2),
("Marguerita", "Molho de tomate, Mussarela e Bacon", "Requeijão", 55.90, 3),
("Frango com catupiry", "Molho de tomate, Mussarela, Peito de peru, Bacon, Tomate e Catupiry", "Requeijão", 70.90, 3),
("FRANGO COM BARBECUE", "Molho de tomate, Frango desfiado, Cream Cheese, Barbecue", "Requeijão", 59.90, 2),
("Muçarela", "Chocolate ao leite, caramelo e amendoim ", "Chocolate ao leite", 59.90, 2),
("Napolitana", "Chocolate branco, suspiro e morango", "Chocolate branco", 105.90, 3),
("CHOCOLATE COM MORANGO", "Chocolate branco e morangos picados", "Chocolate branco", 35.90, 1);

-- Faça um SELECT que retorne todas as pizzas cujo valor seja maior do que R$ 45,00.
SELECT * FROM tb_pizzas WHERE preco > 45.00;

-- Faça um SELECT que retorne todas as pizzas cujo valor esteja no intervalo R$ 50,00 e R$ 100,00.
SELECT * FROM tb_pizzas WHERE preco BETWEEN 50 AND 100;

-- Faça um SELECT utilizando o operador LIKE, buscando todas as pizzas que possuam a letra M no atributo nome.
SELECT * FROM tb_pizzas WHERE nome LIKE "%M%";

-- Um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_pizzas com os dados da tabela tb_categorias.
SELECT * FROM tb_pizzas INNER JOIN tb_categorias ON tb_categorias.id = tb_pizzas.id_categoria;

-- Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_pizzas com os dados da tabela tb_categorias, onde traga apenas as pizzas que pertençam a uma categoria específica (Exemplo: Todas as pizzas que são doce).
SELECT * FROM tb_pizzas INNER JOIN tb_categorias ON tb_categorias.id = tb_pizzas.id_categoria
WHERE tb_categorias.tipo = "Doce";