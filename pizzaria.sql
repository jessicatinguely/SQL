-- Cadastrar Banco de Dados
DROP DATABASE IF EXISTS db_pizzaria_legal;
CREATE DATABASE db_pizzaria_legal;
USE db_pizzaria_legal;

-- Criar tabela de Categorias
DROP TABLE IF EXISTS tb_categorias;
CREATE TABLE tb_categorias (
  id BIGINT AUTO_INCREMENT PRIMARY KEY,
  tipo ENUM('Salgada','Doce','Vegana','Premium') NOT NULL,
  tamanho ENUM('Brotinho','Média','Família') NOT NULL
);

-- Criar tabela de Pizzas 
DROP TABLE IF EXISTS tb_pizzas;
CREATE TABLE tb_pizzas (
  id BIGINT AUTO_INCREMENT PRIMARY KEY,
  sabor VARCHAR(100) NOT NULL,                   -- Ex.: Calabresa, Margherita…
  preco DECIMAL(8,2) NOT NULL,
  sabor_borda ENUM('Nenhuma','Catupiry Original','Cheddar','Requeijao','Brigadeiro' ) DEFAULT 'Nenhuma',
  observacao VARCHAR(255),
  id_categoria BIGINT NOT NULL,
  FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id)
);

-- Inserts: 5 categorias
INSERT INTO tb_categorias (tipo, tamanho) VALUES
('Salgada',   'Brotinho' ),
('Doce',      'Brotinho' ),
('Vegana',    'Média'    ),
('Premium',   'Família'  );


-- Inserts: 8 pizzas (preenchendo a FK id_categoria)
-- ids: 1=Salgada, 2=Doce, 3=Vegana, 4=Premium, 5=SemGluten
INSERT INTO tb_pizzas (sabor, preco, sabor_borda, observacao, id_categoria) VALUES
('Margherita',           42.90, 'Nenhuma',  'manjericão fresco',                 1),
('Calabresa',            47.90, 'Nenhuma',  'com cebola',                        1),
('Quatro Queijos',       59.90, 'Nenhuma',  'muçarela, provolone, gorgonzola...',1),
('Brigadeiro',           49.90, 'Nenhuma',  'chocolate e granulado',             2),
('Vegana Mediterrânea',  54.90, 'Nenhuma',  'azeitona, tomate, rúcula',          3),
('Pepperoni Premium',    72.00, 'Catupiry Original', 'linha premium',            4),
('Banana com Canela',    46.00, 'Cheddar',  'sobremesa',                         2);

-- SELECTs solicitados

-- Pizzas com preço > R$ 45,00
SELECT * FROM tb_pizzas
WHERE preco > 45.00;

-- Pizzas com preço entre R$ 50,00 e R$ 100,00 
SELECT * FROM tb_pizzas
WHERE preco BETWEEN 50.00 AND 100.00;

-- Pizzas cujo SABOR contém a letra 'M'
SELECT * FROM tb_pizzas
WHERE sabor LIKE '%M%';

-- INNER JOIN pizzas x categorias
SELECT p.id, p.sabor, c.tamanho, p.preco, p.sabor_borda, p.observacao,
       c.id AS id_categoria, c.tipo
FROM tb_pizzas p
INNER JOIN tb_categorias c ON p.id_categoria = c.id;

-- INNER JOIN filtrando por categoria específica (ex.: apenas doces)
SELECT p.id, p.sabor, p.preco, c.tipo
FROM tb_pizzas p
INNER JOIN tb_categorias c ON p.id_categoria = c.id
WHERE c.tipo = 'Doce';
