CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    tipo VARCHAR(255),
    descricao VARCHAR(500)
);

CREATE TABLE tb_personagens (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    poder_ataque INT,
    poder_defesa INT,
    nivel INT,
    classe_id BIGINT,
    FOREIGN KEY (classe_id) REFERENCES tb_classes(id)
);

INSERT INTO tb_classes (nome, tipo, descricao) VALUES
('Guerreiro', 'Força', 'Especialista em combate corpo a corpo'),
('Arqueiro', 'Destreza', 'Ataques à distância com alta precisão'),
('Mago', 'Magia', 'Controla poderes mágicos'),
('Assassino', 'Agilidade', 'Ataques rápidos e furtivos'),
('Clérigo', 'Suporte', 'Especialista em cura e proteção');

INSERT INTO tb_personagens (nome, poder_ataque, poder_defesa, nivel, classe_id) VALUES
('Thorgar', 3500, 1800, 20, 1),
('Elowen', 2200, 900, 15, 2),
('Mordrin', 1200, 700, 18, 3),
('Shadow', 2800, 1100, 22, 4),
('Luminara', 900, 2400, 17, 5),
('Raven', 2600, 1500, 19, 2),
('Brutus', 4000, 2000, 25, 1),
('Faylen', 1800, 1300, 12, 3);

SELECT * FROM tb_personagens WHERE poder_ataque > 2000;

SELECT * FROM tb_personagens WHERE poder_defesa BETWEEN 1000 AND 2000;

SELECT * FROM tb_personagens WHERE nome LIKE '%C%';

SELECT 
    tb_personagens.*, 
    tb_classes.nome AS classe,
    tb_classes.tipo,
    tb_classes.descricao
FROM tb_personagens INNER JOIN tb_classes ON tb_personagens.classe_id = tb_classes.id;

SELECT 
    p.*, 
    c.nome AS classe
FROM tb_personagens p INNER JOIN tb_classes c ON p.classe_id = c.id WHERE c.nome = 'Arqueiro';




