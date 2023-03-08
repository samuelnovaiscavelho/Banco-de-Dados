-- Crie um banco de dados para um serviço de RH
CREATE DATABASE db_rh;

USE db_rh;
-- Crie uma tabela de colaboradores e determine 5 atributos
CREATE TABLE tb_colaboradores(
	id BIGINT AUTO_INCREMENT,
    PRIMARY KEY(id),
    admissao_funcionarios VARCHAR(40),
    demissao_colaborador VARCHAR(40),
    quantidade_ferias_dias  INT,
    folha_pagamento DECIMAL(8,2),
    controle_licenca TEXT
        
);

-- SELECT que retorne todes os colaboradores com o salário maior do que 2000
SELECT admissao_funcionarios, folha_pagamento FROM tb_colaboradores WHERE folha_pagamento > 2000.00;

-- SELECT que retorne todes os colaboradores com o salário menor do que 2000.
SELECT admissao_funcionarios, folha_pagamento FROM tb_colaboradores WHERE folha_pagamento < 2000.00;

-- SELECT na tabela
SELECT * FROM tb_colaboradores;

-- Insira nesta tabela no mínimo 5 dados
INSERT INTO tb_colaboradores (admissao_funcionarios, demissao_colaborador, quantidade_ferias_dias, folha_pagamento, controle_licenca) 
	VALUES ("Samuel Novais Cavelho", "Larissa Leopoudo Santos", 25, 5000.00, "Ferias antecipado do Colaborador Samuel, com isso, retornara apenas dia 25/06"),
		   ("Lucas Farias Lima", "Maria Leopoudo Santos", 15, 6000.00, "Ferias antecipado do Colaborador Lucas, com isso, retornara apenas dia 22/05"),
           ("Eduardo Ventura Benzeno", "Leticia Leopoudo Santos", 60, 1500.00, "Ferias antecipado do Colaborador Eduardo, com isso, retornara apenas dia 02/04"),
           ("Artur Novaes Pinto", "Giovana Leopoudo Santos", 30, 10000.00, "Ferias antecipado do Colaborador Artur, com isso, retornara apenas dia 12/04"),
           ("Talita Souza", "Catia Leopoudo Santos", 15, 1000.00, "Ferias antecipado do Colaborador Talita, com isso, retornara apenas dia 04/05");
           
-- Atualize um registro desta tabela através de uma query de atualização
UPDATE  tb_colaboradores SET 
	admissao_funcionarios = "Pedro Nascimento",
    controle_licenca = "Ferias antecipado do Colaborador Pedro, com isso, retornara apenas dia 04/04" 
    WHERE id = 5;
    commit;

          
           






