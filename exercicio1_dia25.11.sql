CREATE DATABASE rh_empresa;

USE rh_empresa;

CREATE TABLE colaboradores (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    cargo VARCHAR(100),
    salario DECIMAL(10,2),
    data_admissao DATE
);

INSERT INTO colaboradores (nome, cargo, salario, data_admissao) 
VALUES
('Ana Silva', 'Analista', 2500.00, '2022-01-10'),
('João Santos', 'Assistente', 1800.00, '2023-03-15'),
('Carla Moraes', 'Gerente', 5200.00, '2020-11-01'),
('Pedro Lima', 'Auxiliar', 1500.00, '2024-02-05'),
('Marina Costa', 'Analista', 3000.00, '2021-09-22');

SELECT * FROM colaboradores WHERE salario > 2000;

UPDATE colaboradores SET salario = 2000.00 WHERE id = 2;


