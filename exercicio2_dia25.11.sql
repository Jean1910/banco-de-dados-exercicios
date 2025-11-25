CREATE DATABASE ecommerce;

USE ecommerce;

CREATE TABLE produtos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    categoria VARCHAR(100),
    preco DECIMAL(10,2),
    estoque INT
);

INSERT INTO produtos (nome, categoria, preco, estoque) VALUES
('Notebook Samsung', 'Informática', 3500.00, 15),
('Mouse Logitech', 'Informática', 120.00, 50),
('Smartphone Xiaomi', 'Eletrônico', 1800.00, 20),
('Mesa Gamer', 'Móveis', 700.00, 10),
('Cadeira Gamer', 'Móveis', 900.00, 12),
('Fone JBL', 'Áudio', 300.00, 40),
('Teclado Mecânico', 'Informática', 450.00, 25),
('Monitor LG', 'Informática', 950.00, 18);

SELECT * FROM produtos WHERE preco > 500;

SELECT * FROM produtos WHERE preco < 500;

UPDATE produtos SET preco = 1000.00 WHERE id = 8;

