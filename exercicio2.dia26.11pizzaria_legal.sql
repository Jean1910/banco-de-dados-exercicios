CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categorias (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    tipo VARCHAR(255),
    descricao VARCHAR(500)
);

CREATE TABLE tb_pizzas (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    preco DECIMAL(10,2),
    tamanho VARCHAR(50),
    borda_recheada VARCHAR(10),
    categoria_id BIGINT,
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias (nome, tipo, descricao) VALUES
('Tradicionais', 'Salgada', 'Pizzas clássicas mais vendidas'),
('Especiais', 'Salgada', 'Sabores diferenciados e gourmet'),
('Doces', 'Doce', 'Pizzas doces e sobremesas'),
('Veganas', 'Salgada', 'Pizzas sem ingredientes de origem animal'),
('Premium', 'Salgada', 'Pizzas exclusivas com ingredientes premium');

INSERT INTO tb_pizzas (nome, preco, tamanho, borda_recheada, categoria_id) VALUES
('Mussarela', 42.00, 'Grande', 'Nao', 1),
('Calabresa', 48.00, 'Grande', 'Sim', 1),
('Quatro Queijos', 55.00, 'Grande', 'Sim', 2),
('Frango com Catupiry', 60.00, 'Grande', 'Sim', 2),
('Chocolate', 50.00, 'Média', 'Nao', 3),
('Banana com Canela', 47.00, 'Média', 'Nao', 3),
('Vegana Verde', 62.00, 'Grande', 'Nao', 4),
('Trufada Premium', 95.00, 'Grande', 'Sim', 5);

SELECT * FROM tb_pizzas WHERE preco > 45;

SELECT * FROM tb_pizzas WHERE preco BETWEEN 50 AND 100;
 
SELECT * FROM tb_pizzas WHERE nome LIKE '%M%';

SELECT tb_pizzas.*, tb_categorias.nome AS categoria, tb_categorias.tipo, tb_categorias.descricao FROM tb_pizzas INNER JOIN tb_categorias ON tb_pizzas.categoria_id = tb_categorias.id;

SELECT p.*, c.nome AS categoria FROM tb_pizzas p INNER JOIN tb_categorias c ON p.categoria_id = c.id WHERE c.tipo = 'Doce';
