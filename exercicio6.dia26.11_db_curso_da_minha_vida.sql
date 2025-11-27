CREATE DATABASE db_curso_da_minha_vida;

USE db_curso_da_minha_vida;

CREATE TABLE tb_cursos(
	id BIGINT AUTO_INCREMENT,
	nome VARCHAR(255) NOT NULL,
	descricao VARCHAR(500),
	categoria VARCHAR(255),
	preco DECIMAL(10,2) NOT NULL,
	carga_horaria INT NOT NULL,
	PRIMARY KEY(id)
);

INSERT INTO tb_cursos (nome, descricao, categoria, preco, carga_horaria) VALUES
("Java Full Stack", "Curso completo de desenvolvimento Java", "Programação", 1999.90, 200),
("Python para Iniciantes", "Curso voltado para lógica e introdução ao Python", "Programação", 899.90, 80),
("Redes de Computadores", "Conceitos e fundamentos de redes", "Infraestrutura", 750.00, 60),
("Excel Avançado", "Funções, dashboards e automação com VBA", "Produtividade", 499.90, 40),
("Banco de Dados MySQL", "Modelagem e SQL avançado", "Banco de Dados", 1200.00, 120),
("AWS Cloud Practitioner", "Fundamentos de Cloud na AWS", "Cloud", 1600.00, 90),
("Segurança da Informação", "Fundamentos de Cybersecurity", "Segurança", 1400.00, 100),
("HTML & CSS", "Criação de páginas web", "Front-end", 450.00, 30);

SELECT * FROM tb_cursos WHERE preco > 1000;

SELECT * FROM tb_cursos WHERE preco BETWEEN 600 AND 1500;

SELECT * FROM tb_cursos WHERE nome LIKE '%A%';

SELECT * FROM tb_cursos;
