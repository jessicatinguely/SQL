CREATE DATABASE db_crmrh; -- Criação banco de dados
USE db_crmrh;

CREATE TABLE tb_colaboradores(
 id bigint AUTO_INCREMENT,
 nome varchar(255) NOT NULL,
 data_admissao DATE NOT NULL,
 cargo varchar(255) NOT NULL,
 departamento varchar(255) NOT NULL,
 salario decimal(10,2) NOT NULL, 
 PRIMARY KEY(id)
);

-- Inserir Registros
INSERT INTO tb_colaboradores (nome, data_admissao, cargo, departamento, salario) VALUES
('Ana Lemos'     , '2024-03-15', 'Analista de Operações' , 'Operações' , 1850.00),
('Bruno Souza'   , '2023-11-01', 'Desenvolvedor'         , 'Tecnologia', 5200.00),
('Carla Martins' , '2022-07-20', 'Assistente Administrativo','Administrativo', 1950.00),
('Diego Ramos'   , '2021-02-10', 'Coordenador de RH'     , 'Recursos Humanos', 4100.00),
('Elisa Roitman', '2025-01-05', 'Estagiária'            , 'Marketing' , 1500.00);

-- SELECT: todos os colaboradores com salário > 2000
SELECT * FROM tb_colaboradores WHERE salario > 2000;

-- SELECT: todos os colaboradores com salário < 2000
SELECT * FROM tb_colaboradores WHERE salario < 2000;

-- UPDATE: atualizar um registro 
UPDATE tb_colaboradores SET cargo = 'Gerente Operacional', salario = 6500.00 WHERE id = 1;

-- Verificar se houve a atualização do UPDATE
SELECT * FROM tb_colaboradores WHERE nome = 'Ana Lemos';

-- Verificar tabela atualizada 
SELECT * FROM tb_colaboradores



