CREATE PROCEDURE InsertCliente 
    @Nome VARCHAR(100),
    @Morada VARCHAR(100),
    @Telefone VARCHAR(20),
    @Email VARCHAR(100),
    @DataNascimento DATE,
    @Genero VARCHAR(10),
    @CPF VARCHAR(20),
    @EstadoCivil VARCHAR(20),
    @Observacao VARCHAR(MAX)
AS
BEGIN
    INSERT INTO Cliente (Nome, Morada, Telefone, Email, DataNascimento, Genero, CPF, EstadoCivil, Observacao)
    VALUES (@Nome, @Morada, @Telefone, @Email, @DataNascimento, @Genero, @CPF, @EstadoCivil, @Observacao)
END;
