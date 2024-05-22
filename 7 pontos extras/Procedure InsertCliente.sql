CREATE PROCEDURE InserirCliente (
    @Nome VARCHAR(100),
    @DataNascimento DATE,
    @Genero VARCHAR(10),
    @CPF VARCHAR(11),
    @EstadoCivil VARCHAR(20),
    @Observacao VARCHAR(MAX)
)
AS
BEGIN
    INSERT INTO Cliente (Nome, DataNascimento, Genero, CPF, EstadoCivil, Observacao)
    VALUES (@Nome, @DataNascimento, @Genero, @CPF, @EstadoCivil, @Observacao);
END;

EXEC InserirCliente 'Maria Silva', '1990-05-12', 'Feminino', '123.456.789-00', 'Solteiro(a)', 'Cliente regular.';
