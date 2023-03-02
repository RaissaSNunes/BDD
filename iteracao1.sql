CREATE TABLE Lista (
Código int NOT NULL,
Tarefa varchar(100) NOT NULL,
PRIMARY KEY (Código)
);

INSERT INTO Lista (Código, Tarefa) VALUES (1, 'Comprar carne moida');
INSERT INTO Lista (Código, Tarefa) VALUES (2, 'Limpar pia');
INSERT INTO Lista (Código, Tarefa) VALUES (3, 'Fazer lição de lógica 2');
INSERT INTO Lista (Código, Tarefa) VALUES (4, 'Andar 2 km');

SELECT * FROM Lista;


