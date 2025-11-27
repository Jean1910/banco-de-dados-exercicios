CREATE DATABASE escola;

USE escola;

CREATE TABLE estudantes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    turma VARCHAR(50),
    idade INT,
    nota_final DECIMAL(3,1)
);

INSERT INTO estudantes (nome, turma, idade, nota_final) 
VALUES
('Laura Martins', '1A', 14, 8.5),
('Paulo Henrique', '2B', 15, 6.0),
('Júlia Nogueira', '3A', 16, 7.8),
('Felipe Souza', '1A', 14, 5.5),
('Bruna Ribeiro', '2B', 15, 9.2),
('Mateus Cunha', '3A', 17, 4.8),
('Camila Santos', '1B', 14, 7.0),
('Rafael Lopes', '2A', 16, 8.0);

SELECT * FROM estudantes WHERE nota_final > 7.0;

SELECT * FROM estudantes WHERE nota_final < 7.0;

UPDATE estudantes SET nota_final = 7.5 WHERE id = 2;
