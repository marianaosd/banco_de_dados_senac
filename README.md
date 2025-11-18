# Explorando DDL e DML

## DDL: Data Definition Language (Linguagem de Definição de Dados)
O DDL define a estrutura dos objetos do banco de dados (tabelas, esquemas, etc.).

| Comando DDL | Função Principal                                           | Exemplo do Projeto `LocadoraDeFilmesSenac`                                  |
|------------|------------------------------------------------------------|-----------------------------------------------------------------------------|
| `CREATE`   | Cria novos objetos.                                        | `CREATE DATABASE LocadoraDeFilmesSenac;`                                    |
| `ALTER`    | Modifica a estrutura de objetos existentes.                | `ALTER TABLE Filmes ADD INDEX idx_titulo (Titulo);`                         |
| `DROP`     | Remove um objeto permanentemente.                          | `DROP TABLE Clientes;`                                                      |
| `TRUNCATE` | Remove todos os registros de uma tabela (mantém a estrutura). | `TRUNCATE TABLE Alugueis;`                                              |

Observação Importante (DDL): Ao executar comandos DDL, o banco de dados geralmente realiza um commit implícito, o que significa que as alterações na estrutura são salvas automaticamente e não podem ser revertidas (rollback).

---

## DML: Data Manipulation Language (Linguagem de Manipulação de Dados)
O DML é usado para manipular os dados que estão dentro das estruturas criadas pelo DDL.

| Comando DML | Função Principal                                       | Exemplo do Projeto `LocadoraDeFilmesSenac`                                                        |
|------------|--------------------------------------------------------|---------------------------------------------------------------------------------------------------|
| `INSERT`   | Adiciona novos registros (linhas) à tabela.            | `INSERT INTO Clientes (Nome, Email) VALUES ('João', 'jooo.p@email.com');`                        |
| `UPDATE`   | Modifica dados existentes nos registros.              | `UPDATE Filmes SET PrecoAluguel = 9.50 WHERE Titulo = 'Viagem Estelar';`                         |
| `DELETE`   | Remove registros (linhas) específicos da tabela.      | `DELETE FROM Clientes WHERE Nome = 'Pedro';`                                                     |
| `SELECT`   | Recupera e consulta dados da tabela.                  | `SELECT Titulo, PrecoAluguel FROM Filmes;`                                                       |

Observação Importante (DML): Os comandos DML (`INSERT`, `UPDATE`, `DELETE`) operam em nível de registro (linhas). Eles são transacionais, o que significa que o usuário deve explicitamente usar o comando `COMMIT` para salvar as alterações permanentemente ou `ROLLBACK` para desfazê-las, se necessário.

---

## Resumo da Aplicação no Projeto

No contexto deste projeto (`bank_de_dados_senac`), utilizamos:

DDL para:
- Criar o banco de dados (`CREATE DATABASE`).
- Criar as tabelas (`CREATE TABLE`).
- Adicionar chaves estrangeiras e índices (`ALTER TABLE`).

DML para:
- Popular as tabelas com dados de amostra (`INSERT`).
- Corrigir ou alterar valores existentes (`UPDATE`).
- Remover registros não mais necessários (`DELETE`).
