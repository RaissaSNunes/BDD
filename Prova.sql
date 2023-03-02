CREATE TABLE Paciente(
	Codigo INT NOT NULL,
	Nome VARCHAR (100),
	CPF INT NOT NULL,
	Data_nascimento date NOT NULL
    PRIMARY KEY (Codigo)
    );
    
    CREATE TABLE Médico (
    Codigo INT NOT NULL,
    Nome VARCHAR (100),
    Especialidade VARCHAR (60)
	PRIMARY KEY (Codigo)
    );
    
    CREATE TABLE Consulta (
    codigo_paciente INT NOT NULL,
    Codigo_medico INT NOT NULL,
	Dia_horario DATETIME NOT NULL,
    FOREIGN KEY (codigo_paciente) REFERENCES (Paciente)
    );
    
    INSERT INTO Paciente VALUES 
	(1, 'Raissa Nunes', 2005-09-18);
    
    INSERT INTO Medico VALUES 
    (1, 'Amanda', 'Oftalmologista');
    
    INSERT INTO Consulta VALUES
    (1, 1, '2022-07-11 07:30:00');
    
    SELECT * FROM Consulta;
    
    SELECT Codigo_paciente, cod_medico FROM Paciente;
    
    SELECT * FROM Medico;
    
    

