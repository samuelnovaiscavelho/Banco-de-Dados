-- Comando para criação de banco de dados
-- DDL create
CREATE DATABASE db_quitanda;

-- Comando que indica ao mysql work o banco de dados
USE db_quitanda;

CREATE TABLE tb_produtos(
	id BIGINT AUTO_INCREMENT,
	PRIMARY KEY(id),
    -- quantidade de carateres permitidos
    nome_produto VARCHAR(255),
    -- a quantidade maxima de numeros 6 e depois da virgula seria o 2 
    preco DECIMAL(6,2)
);

-- comando que trás todos os dados da tabela de produtos
SELECT * FROM tb_produtos;

INSERT INTO tb_produtos(nome_produto, preco) VALUES ("Uva", 2.00);

-- desativar o modo seguro do mysql e permite update e delete
SET SQL_SAFE_UPDATES = 0;

-- atualização de um dado dentro da minha tabela
UPDATE tb_produtos SET preco = 7.90;
