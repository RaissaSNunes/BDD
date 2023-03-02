CREATE TABLE Lista (
Código int NOT NULL,
Tarefa varchar(100) NOT NULL,
Marcador BIT NOT NULL,
PRIMARY KEY (Código)
);

INSERT INTO Lista (Código, Tarefa, Marcador) VALUES (1, 'Comprar carne moida',1);
INSERT INTO Lista (Código, Tarefa, Marcador) VALUES (2, 'Limpar pia', 0);
INSERT INTO Lista (Código, Tarefa, Marcador) VALUES (3, 'Fazer lição de lógica 2', 1);
INSERT INTO Lista (Código, Tarefa, Marcador) VALUES (4, 'Andar 2 km', 0);

SELECT * FROM Lista;


Select Tarefa
FROM Lista
WHERE Marcador = 0;

ALTER TABLE Lista ADD ativo boolean NOT NULL DEFAULT true;