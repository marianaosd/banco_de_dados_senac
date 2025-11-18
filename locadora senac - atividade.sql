CREATE DATABASE LocadoraDeFilmesSenac;9
USE LocadoraDeFilmesSenac;

CREATE TABLE Filmes (
    FilmeID INT PRIMARY KEY AUTO_INCREMENT,
    Titulo VARCHAR(255) NOT NULL,
    AnoLancamento INT,
    Diretor VARCHAR(150),
    Estoque INT DEFAULT 0,
    PrecoAluguel DECIMAL(4, 2) NOT NULL
);
CREATE TABLE Clientes (
    ClienteID INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(100) NOT NULL,
    Sobrenome VARCHAR(100),
    Email VARCHAR(150) UNIQUE,
    Telefone VARCHAR(20)
);
CREATE TABLE Alugueis (
    AluguelID INT PRIMARY KEY AUTO_INCREMENT,
    ClienteID INT,
    FilmeID INT,
    DataAluguel DATE NOT NULL,
    DataDevolucaoPrevista DATE,
    
    FOREIGN KEY (ClienteID) REFERENCES Clientes(ClienteID),
    FOREIGN KEY (FilmeID) REFERENCES Filmes(FilmeID)
);

ALTER TABLE Filmes
ADD INDEX idx_titulo (Titulo);

INSERT INTO Clientes (Nome, Sobrenome, Email, Telefone) VALUES
('Pedro', 'Alves', 'alves.pc@gmail.com', '81999998888'),
('Mariana', 'Oliveira', 'mariana.osd@gmail.com', '81999998889'),
('Analuz', 'Alves', 'analuz.alvesol@gmail.com', '81999999888');

INSERT INTO Filmes (Titulo, AnoLancamento, Diretor, Estoque, PrecoAluguel) VALUES
('Truque de Mestre', 2013, 'Louis Leterrier', 7, 7.99),
('Para Todos os Garotos que já Amei', 2018, 'Jennie Han', 5, 7.50),
('Mercenários 3', 2014, 'Patrick Hughes', 9, 10.00);

INSERT INTO Alugueis (ClienteID, FilmeID, DataAluguel, DataDevolucaoPrevista) VALUES
(1, 1, '2025-11-18', '2025-11-23');

INSERT INTO Alugueis (ClienteID, FilmeID, DataAluguel, DataDevolucaoPrevista) VALUES
(2, 2, '2025-11-20', '2025-11-25');

UPDATE Filmes
SET PrecoAluguel = 10.00
WHERE Titulo = 'Os Mercenário 3';

DELETE FROM Clientes
WHERE Nome = 'Pedro' AND Sobrenome = 'Alves';

SELECT Titulo, PrecoAluguel FROM Filmes WHERE Estoque > 0;