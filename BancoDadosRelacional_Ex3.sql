-- banco de dados para um registro de uma escola
CREATE DATABASE db_escola;
USE db_escola;

-- Crie uma tabela estudantes e utilizando a habilidade de abstração e determine 5 atributos relevantes
CREATE TABLE tb_estudantes(
	id BIGINT AUTO_INCREMENT,
    PRIMARY KEY(id),
	nome_aluno VARCHAR(40),
    nota FLOAT,
    ausencias INT,
    disciplina VARCHAR(50),
    trabalhos TEXT,
    aprovado_media CHAR
);

SELECT * FROM tb_estudantes;

-- Faça um SELECT que retorne todes o/a(s) estudantes com a nota maior do que 7.0
SELECT nome_aluno, nota, aprovado_media FROM tb_estudantes WHERE nota > 7.0;

-- Faça um SELECT que retorne todes o/a(s) estudantes com a nota menor do que 7.0.
SELECT nome_aluno, nota, aprovado_media FROM tb_estudantes WHERE nota < 7.0;

-- Insira nesta tabela no mínimo 8 dados (registros).
INSERT INTO tb_estudantes(nome_aluno, nota, ausencias, disciplina, trabalhos, aprovado_media) VALUES ("Samuel Novais", 10, 20, "Matematica", "Pesquisa de Vetores", "S"),
																									 ("Giovana Cardosa do Santos", 7, 2, "Português", "Redação para fazer com 30 linhas", "S"),
                                                                                                     ("Lais Pereira", 8, 10, "Sociologia", "Quem foi Rene Descartes", "S"),
                                                                                                     ("Lucas Martins", 5, 5, "Filosofia", "O que é amor", "S"),
                                                                                                     ("Bruno Vinicius", 4, 2, "Artes", "Desenhe a Monalisa", "N"),
                                                                                                     ("Victor Kleim", 3, 1, "Inglês", "Verbo to be", "S"),
                                                                                                     ("Bruno Roger", 10, 12, "Artes", "Desenhe Algo para entregar dia 15/03", "N"),
                                                                                                     ("Nilda Bahiana", 6, 2, "Espanhol", "Pesquisar musicas em espanhol", "N");
-- Ao término atualize um registro desta tabela através de uma query de atualização.
UPDATE tb_estudantes SET 
	nome_aluno = "Samuel Vieira", 
    nota = 8 
    WHERE id = 1;
	commit;

                                                                                                     

