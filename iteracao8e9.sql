CREATE DATABASE iteracao8e9;

USE iteracao8e9;


CREATE TABLE Usuario (
  Codigo INT NOT NULL,
  Nome VARCHAR (225) NOT NULL,
  Email VARCHAR (225) NOT NULL,
  Senha VARCHAR (80) NOT NULL,
  Codigo_verificacao VARCHAR (80) NOT NULL,
  Verificado BOOL,
  PRIMARY KEY (Codigo)
);

INSERT INTO Usuario VALUES 
 (1, 'Jose', 'joseserqura@gmail.com', 
 '$2a$12$w44G9cV30ajPdauhijiyXOBTmml4dVcHOb/XRRjnOivrNsAOovzpS', 'd000fd9db-acb2-40f9-9ac9-c2c187082ba4', false),
 (2, 'Marina', 'marinamari@gmail.com', '$2a$12$pQs/RDLyy0aWc3GjiSqipuhF8s.N5emA3pxNblPH89oPRh9KpFGNK', 'C911876d-2a37-4506-8192-1c853e3c1dc66', false),
 (3, 'Leticia', 'lelesilva@gmail.com', '$2a$12$90clFrnl1kJH0fZGP6Xp1uy/5b5DNK1dBuMNTjTYKG39oiV1Mq0O', '9fe07a34-1e4c-45d6-9b5b-91ab-6b679470' , false);

SELECT * FROM Usuario;


CREATE TABLE Lista (                                            
  Codigo INT NOT NULL,
  Nome VARCHAR (100) NOT NULL,
  Cor CHAR (10) NOT NULL,
  Codigo_usuario INT NOT NULL,
  PRIMARY KEY (Codigo),
  FOREIGN KEY (Codigo_usuario) REFERENCES Usuario (Codigo)
); 

INSERT INTO Lista VALUES
(1, 'Deveres domésticos', '#FFF0F5' , 1),
(2, 'Liçoes', '#000000', 1),
(3, 'Compras', '#1E90FF', 1),
(4, 'Pagamentos', '#7B68EE', 2),
(5, 'Vida saudável', '#87CEFA', 2),
(6, 'Filmes', '#4682B4', 2),
(7, 'Documentários', '#ADFF2F', 3),
(8, 'Livros', '#CD5C5C', 3),
(9, 'Cronograma capilar', '#CD00EF' , 3);

SELECT * FROM Lista;

CREATE TABLE Tarefa (
  Codigo INT NOT NULL,
  Codigo_lista INT NOT NULL,
  Descrição VARCHAR (100) NOT NULL,
  Data_tarefa DATE,
  Realizada BOOl,
  PRIMARY KEY (Codigo),
  FOREIGN KEY (Codigo_lista) REFERENCES Lista (Codigo)
  );
  
  DROP DATABASE iteracao8e9;
  
CREATE TABLE Alteracao_senha(
  Codigo INT NOT NULL,
  Codigo_usuario INT NOT NULL,
  CODIGO_verificacao VARCHAR (60) NOT NULL,
  Gerado_em DATETIME,
  Utilizado BOOLEAN,
  PRIMARY KEY (Codigo),
  FOREIGN KEY (Codigo_usuario) REFERENCES Usuario (Codigo)
);

INSERT INTO Alteracao_senha VALUES
(1, 2, '$2a$12$w44G9cV30ajPdauhijiyXOBTmml4dVcHOb', '2022-04-17 17:43:00', true);

  
INSERT INTO Tarefa VALUES
  (1, 1, 'Lavar roupa', '2002-04-05', false),
  (2, 1, 'Lavar louça' , '2022-03-18',  false),
  (3, 1, 'Passar pano na casa','2022-04-18', false);

INSERT INTO Tarefa VALUES
  (4, 2, 'Produçao de texto LPL', '2022-04-17', false),
  (5, 2, 'Calculos quimica', '2022-06-06', false),
  (6, 2, 'Atividade matemática','2022-04-28', false);

INSERT INTO Tarefa VALUES
  (7, 3, 'Maçã' ,'2022-04-20',  false),
  (8, 3, 'Banana','2022-07-01',  false),
  (9, 3, 'Arroz' , '2022-04-25',  false);

INSERT INTO Tarefa VALUES
  (10, 4, 'Conta de agua', '2022-06-01', false),
  (11, 4, 'Conta de luz' , '2022-07-01', false),
  (12, 4, 'Cartao de credito' ,'2022-06-01' ,false);

INSERT INTO Tarefa VALUES
  (13, 5, 'Ir a academia', '2022-04-05', false),
  (14, 5, 'Ir ao psicologo', '2022-07-03', false),
  (15, 5, 'Tomar agua', '2022-04-11', false);

INSERT INTO Tarefa VALUES
  (16, 6, 'Bad Boys', '2022-08-01', false),
  (17, 6, 'Sexta feira em apuros', '2022-08-01', false),
  (18, 6, 'O intruso', '2022-08-01', false);

INSERT INTO Tarefa VALUES
  (19, 7, 'Eua', '2022-05-09', false),
  (20, 7, 'Mistérios sem solução', '2022-05-11', false),
  (21, 7, 'O dilema da redes', '2022-05-12', false);

INSERT INTO Tarefa VALUES
  (22, 8, 'Diario de um banana', '2022-07-14', false),
  (23, 8, 'Hora do espanto', '2022-07-20', false),
  (24, 8, 'Frankenstein',  '2022-08-01', false);

INSERT INTO Tarefa VALUES
  (25, 9, 'Nutrição', '2022-06-30', false),
  (26, 9, 'Reconstrução', '2022-07-01', false),
  (27, 9, 'Hidratação', '2022-06-15', false);

SELECT *
FROM Tarefa 
WHERE data_tarefa = '2022-04-18'
AND codigo_lista IN (1, 2);

SELECT *
FROM tarefa
WHERE data_tarefa < '2022-04-18'
AND realizada = false
AND Codigo_lista IN (1,7,9);

SELECT * FROM Alteracao_senha;