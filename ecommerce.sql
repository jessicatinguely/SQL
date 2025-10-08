CREATE DATABASE db_ecommerce;  -- Criação banco de dados
USE db_ecommerce;

-- Criar tabela produtos
CREATE TABLE tb_produtos( 
 id bigint AUTO_INCREMENT,
 nome varchar(255) NOT NULL,
 tipo varchar(255) NOT NULL,
 tamanho varchar(255),
 preco decimal(10,2) NOT NULL, 
 estoque INT, 
 PRIMARY KEY(id)
 );
 
 -- Inserir Registros
 
 INSERT INTO tb_produtos (nome, tipo, tamanho, preco, estoque) VALUES
('Camiseta Básica Algodão',        'Vestuário',  'M',   79.90,  100),
('Calça Jeans Skinny Feminina',    'Vestuário',  '38',  189.90,  50),
('Jaqueta Jeans Oversized',        'Vestuário',  'G',   249.99,  30),
('Vestido Floral Longo',           'Vestuário',  'M',   329.90,  25),
('Tênis Casual Branco',            'Calçado',    '39',  549.90,  40),
('Sandália Anabela Feminina',      'Calçado',    '37',  279.90,  20),
('Bolsa Couro Sintético Preta',    'Acessório',  NULL,  459.90,  15),
('Boné Trucker Unissex',           'Acessório',  'Único',129.90,  60);
 
 -- SELECT: produtos com preço > 500
 SELECT * FROM tb_produtos WHERE preco > 500;
 
 -- SELECT: produtos com preço  < 500
  SELECT * FROM tb_produtos WHERE preco < 500;
  
  -- UPDATE: atualizar um registro 
  UPDATE tb_produtos SET preco = 99.99 WHERE id = 1;
  
   -- Verificar a atualização do UPDATE
  SELECT * FROM tb_produtos WHERE id = 1;
  
  -- Verificar a atualização do UPDATE
SELECT * FROM tb_produtos;