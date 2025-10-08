# 🧠 Estudos de SQL  
![MySQL](https://img.shields.io/badge/MySQL-00758F?style=for-the-badge&logo=mysql&logoColor=white) ![GitHub](https://img.shields.io/badge/GitHub-121011?style=for-the-badge&logo=github&logoColor=white)

> Repositório criado para armazenar meus estudos e práticas de **SQL**, com foco em modelagem, criação e manipulação de dados em diferentes contextos. Todos os bancos de dados foram desenvolvidos e executados no **MySQL Workbench**.

## 🗂️ Estrutura dos Bancos de Dados  
| Arquivo | Tema | Descrição |
|----------|------|-----------|
| `crmrh.sql` | 💼 **Recursos Humanos (CRM RH)** | Banco de dados com colaboradores, cargos, salários e departamentos. Inclui exemplos de filtros e atualizações. |
| `ecommerce.sql` | 🛍️ **E-commerce** | Estrutura de loja virtual com produtos, tipos, tamanhos e estoque. Contém consultas e manipulação de preços. |
| `escola.sql` | 🎓 **Escola** | Controle de alunos, médias e situação escolar com comandos `SELECT`, `UPDATE` e `WHERE`. |
| `quitandinha.sql` | 🍎 **Quitanda** | Banco de dados de uma quitanda fictícia com produtos, quantidades, validade e preço. Inclui exemplos de `ALTER TABLE` e `DELETE`. |

## 🧩 Comandos SQL Praticados  
### 🏗️ Estrutura e Modelagem  
```sql
CREATE DATABASE nome_do_banco;
CREATE TABLE nome_da_tabela (...);
ALTER TABLE nome_da_tabela ADD coluna;
PRIMARY KEY, AUTO_INCREMENT;
```
### 🧮 Manipulação de Dados  
```sql
INSERT INTO tabela VALUES (...);
UPDATE tabela SET coluna = valor WHERE id = ...;
DELETE FROM tabela WHERE id = ...;
```
### 🔍 Consultas  
```sql
SELECT * FROM tabela;
SELECT * FROM tabela WHERE coluna > valor;
SELECT * FROM tabela WHERE coluna < valor;
```
## ⚙️ Ferramentas Utilizadas  
| Ferramenta | Uso Principal |
|-------------|---------------|
| 🐬 **MySQL Workbench** | Criação, execução e gerenciamento dos scripts SQL |
| 🧩 **Git & GitHub** | Versionamento e portfólio dos estudos |

## 🎯 Objetivo  
Consolidar o aprendizado de **modelagem de dados**, **DDL** e **DML**, aplicando boas práticas de escrita, clareza e versionamento de scripts SQL.  

## ✨ Autora  
**👩‍💻 Jessica Ghirardelli Tinguely**  
🎓 Estudante de **Análise e Desenvolvimento de Sistemas – FIAP**  
💡 Bootcamp **Java Full Stack – Generation Brasil**  
📫 [LinkedIn](https://linkedin.com/in/jessicatinguely) • [GitHub](https://github.com/jessicatinguely)

💾 *Repositório criado para fins educacionais e portfólio técnico.* 
⭐ *Se esse conteúdo te ajudou, considere deixar uma estrela no repositório!* 🌟
