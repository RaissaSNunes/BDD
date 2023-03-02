CREATE DATABASE Iteracao_3;

USE Iteracao_3;

CREATE TABLE Usuario (
id int NOT NULL,
nome VARCHAR (100) NOT NULL,
email VARCHAR(100) NOT NULL,
senha VARCHAR (20) NOT NULL,
PRIMARY KEY (id)
);

CREATE TABLE Tarefas(
id int NOT NULL,
descricao VARCHAR (100) NOT NULL,
id_usuario int NOT NULL,
PRIMARY KEY (id),
FOREIGN KEY (id_usuario) REFERENCES Usuario (id)
);

INSERT INTO Usuario VALUES
(1, 'Joao', 'joaosilva@email.com', '2023232');

INSERT INTO Tarefas VALUES
(1, 'Andar 2 km'),
(2, 'Comprar carne moida'),
(3, 'Limpar pia'),
(4, 'Fazer licao de logica 2');

ALTER TABLE Tarefas ADD realizada boolean NOT NULL DEFAULT true;

SELECT * FROM Tarefas;
SELECT * FROM Usuario;
SELECT* FROM Usuario WHERE id=1;
SELECT * FROM Tarefas WHERE id_usuario=1;