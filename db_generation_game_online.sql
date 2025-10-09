-- 🎮 JOGO: RPG DETETIVE ONLINE - "MISTÉRIO NA MANSÃO"
-- Projeto desenvolvido como parte do exercício de Banco de Dados da Generation.
-- Este RPG investigativo é inspirado no clássico jogo Detetive, adaptado para o formato online.
--
-- 🧠 "poder_ataque" representa a capacidade de dedução e argumentação durante as investigações.
-- 🛡️ "poder_defesa" indica a resistência psicológica e a habilidade de manter a calma sob pressão.
-- 💬 "sanidade" simboliza o equilíbrio mental ao lidar com enigmas e situações de estresse.
-- ⚔️ "ataque_base" reflete o talento natural de cada classe em resolver casos complexos.
--
-- Cada personagem evolui em "nível" conforme soluciona casos e descobre novas pistas.
-- Assim, o "ataque" e a "defesa" não se referem a combates físicos, 
-- mas sim a disputas mentais e estratégicas típicas de um jogo de investigação.

-- Apagar Banco de Dados db_generation_game_online;
DROP DATABASE db_generation_game_online;

-- Recriar o Banco de dados db_generation_game_online;
CREATE DATABASE db_generation_game_online;

-- Selecionar o Banco de Dados db_generation_game_online;
USE db_generation_game_online;

-- Criar tabela classes
CREATE TABLE tb_classes (
	id BIGINT AUTO_INCREMENT,
	nome VARCHAR(100) NOT NULL,       -- Nome da classe (ex: Detetive, Policial, Espião)
	especialidade ENUM('Investigação', 'Combate', 'Tecnologia', 'Análise', 'Infiltração') NOT NULL,
	arma_inicial ENUM('Lupa', 'Pistola', 'Notebook', 'Corda', 'Castiçal') NOT NULL,
	ataque_base INT NOT NULL,         -- Força inicial padrão da classe
	PRIMARY KEY (id)
);

-- Criar tabela personagens 
CREATE TABLE tb_personagens (
	id BIGINT AUTO_INCREMENT,
	nome VARCHAR(100) NOT NULL,
	nivel INT DEFAULT 1,                     -- Nível atual do personagem (inicia em 1 padrão)
	poder_ataque INT NOT NULL,               -- Dano ou força de ataque do personagem
	poder_defesa INT NOT NULL,               -- Capacidade de resistência a ataques
	sanidade INT NOT NULL,                   -- Controle mental / equilíbrio psicológico
	id_classe BIGINT NOT NULL,
	PRIMARY KEY (id),
	FOREIGN KEY (id_classe) REFERENCES tb_classes(id)
);

-- Inserir 5 classes
INSERT INTO tb_classes (nome, especialidade, arma_inicial, ataque_base) VALUES
('Detetive', 'Investigação', 'Lupa', 1500),
('Policial', 'Combate', 'Pistola', 2500),
('Cientista Forense', 'Análise', 'Notebook', 1200),
('Espião', 'Infiltração', 'Corda', 1800),
('Criminoso', 'Combate', 'Castiçal', 2700);

-- Inserir 8 personagens
INSERT INTO tb_personagens (nome, nivel, poder_ataque, poder_defesa, sanidade, id_classe) VALUES
('Coronel Mostarda', 10, 2600, 2000, 80, 2),
('Srta. Scarlet', 9, 2300, 1500, 85, 5),
('Professor Plum', 12, 1200, 1800, 95, 3),
('Sra. White', 8, 900, 1200, 70, 3),
('Sr. Green', 11, 2000, 1000, 88, 4),
('Sra. Peacock', 7, 1500, 1300, 90, 1),
('Detetive Holmes', 15, 3100, 2200, 98, 1),
('Inspetor Grey', 13, 2800, 1900, 92, 2);

-- Sequência de SELECTS solicitados na ATIVIDADE:
-- personagens cujo poder de ataque seja maior do que 2000
SELECT * FROM tb_personagens WHERE poder_ataque > 2000;

-- personagens cujo poder de defesa esteja no intervalo 1000 e 2000
SELECT * FROM tb_personagens WHERE poder_defesa BETWEEN 1000 AND 2000;

-- personagens que possuam a letra C no atributo nome
SELECT * FROM tb_personagens WHERE nome LIKE '%C%';

-- unir os dados da tabela tb_personagens com os dados da tabela tb_classes
SELECT p.*, c.* FROM tb_personagens p INNER JOIN tb_classes c
ON p.id_classe = c.id;

-- unir os dados da tabela tb_personagens com os dados da tabela tb_classes com normalizacao para relatorio
SELECT p.nome as "Nome Personagem", 
p.nivel as "Nivel", 
p.poder_ataque "Poder de Ataque", 
c.nome as  "Classe", 
c.especialidade as "Especializacao" 
FROM tb_personagens p 
INNER JOIN tb_classes c ON p.id_classe = c.id;

-- unir os dados da tabela tb_personagens com os dados da tabela tb_classes
-- trazer apenas os personagens que pertençam a uma classe específica
SELECT p.*, c.* FROM tb_personagens p INNER JOIN tb_classes c
ON p.id_classe = c.id
WHERE c.nome = 'Policial';

