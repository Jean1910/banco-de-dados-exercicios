CREATE DATABASE db_construindo_vidas;

USE db_construindo_vidas;

CREATE TABLE tb_categorias (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    setor VARCHAR(255),
    descricao VARCHAR(500)
);

CREATE TABLE tb_produtos (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    valor DECIMAL(10,2),
    quantidade INT,
    marca VARCHAR(255),
    categoria_id BIGINT,
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias (nome, setor, descricao) VALUES
('Hidráulica', 'Tubulação', 'Itens para água e esgoto'),
('Elétrica', 'Instalações', 'Produtos para instalações elétricas'),
('Pintura', 'Acabamento', 'Tintas e acessórios'),
('Ferramentas', 'Utilidades', 'Ferramentas profissionais e domésticas'),
('Construção Pesada', 'Estrutura', 'Materiais estruturais e pesados');

INSERT INTO tb_produtos (nome, valor, quantidade, marca, categoria_id) VALUES
('Cano PVC 50mm', 35.00, 30, 'Tigre', 1),
('Registro de Pressão', 120.00, 15, 'Deca', 1),
('Fio 2.5mm', 80.00, 50, 'Sil', 2),
('Interruptor Simples', 25.00, 100, 'Pial', 2),
('Tinta Acrílica 18L', 180.00, 20, 'Suvinil', 3),
('Rolo de Pintura', 22.00, 40, 'Atlas', 3),
('Martelo Profissional', 65.00, 25, 'Tramontina', 4),
('Saco de Cimento 50kg', 45.00, 200, 'Votoran', 5);

SELECT * FROM tb_produtos WHERE valor > 100;

SELECT * FROM tb_produtos WHERE valor BETWEEN 70 AND 150;

SELECT * FROM tb_produtos WHERE nome LIKE '%C%';

SELECT p.*, c.nome AS categoria, c.setor, c.descricao FROM tb_produtos p INNER JOIN tb_categorias c ON p.categoria_id = c.id;

SELECT p.*, c.nome AS categoria FROM tb_produtos p INNER JOIN tb_categorias c ON p.categoria_id = c.id WHERE c.nome = 'Hidráulica';

