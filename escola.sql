CREATE DATABASE db_escola;  -- Criação banco de dados
USE db_escola;

-- Criar tabela alunos
CREATE TABLE tb_alunos( 
 id bigint AUTO_INCREMENT,
 nome varchar(255) NOT NULL,
 data_nascimento DATE NOT NULL,
 serie varchar(255) NOT NULL,
 media DECIMAL(4,2) NOT NULL,
 situacao varchar(255) NOT NULL, 
 PRIMARY KEY(id)
 );
 
 -- Inserir Registros
 
INSERT INTO tb_alunos (nome, data_nascimento, serie, media, situacao) VALUES
('Ana Costa',       '2010-05-12', '6º Ano',  8.50, 'Ativo'),
('Bruno Lima',      '2009-08-23', '7º Ano',  6.90, 'Ativo'),
('Carla Mendes',    '2011-02-14', '5º Ano',  9.20, 'Ativo'),
('Daniel Souza',    '2010-11-09', '6º Ano',  5.80, 'Recuperação'),
('Eduarda Rocha',   '2008-03-01', '9º Ano',  7.40, 'Ativo'),
('Felipe Andrade',  '2012-06-30', '4º Ano',  6.50, 'Ativo'),
('Giovana Pires',   '2008-12-19', '9º Ano',  8.10, 'Ativo'),
('Henrique Torres', '2009-01-27', '7º Ano',  4.90, 'Recuperação');
 
 -- SELECT: nota > 7.0
 SELECT * FROM tb_alunos WHERE media > 7.0;
 
 -- SELECT: nota < 7.0
  SELECT * FROM tb_alunos WHERE media < 7.0;
  
  -- UPDATE: atualizar um registro 
  UPDATE tb_alunos SET situacao = 'Recuperação' WHERE id = 1;
  
   -- Verificar a atualização do UPDATE
  SELECT * FROM tb_alunos WHERE id = 1;
  
  -- Verificar a atualização do UPDATE
SELECT * FROM tb_alunos;