CREATE PROCEDURE InsertFuncionario
    @Nome VARCHAR(100),
    @Morada VARCHAR(100),
    @Telefone VARCHAR(20),
    @Categoria VARCHAR(50),
    @DataContratacao DATE,
    @Salario DECIMAL(10,2),
    @ContatoEmergencia VARCHAR(100),
    @Qualificacoes VARCHAR(MAX)
AS
BEGIN
    INSERT INTO Funcionario (Nome, Morada, Telefone, Categoria, DataContratacao, Salario, ContatoEmergencia, Qualificacoes)
    VALUES (@Nome, @Morada, @Telefone, @Categoria, @DataContratacao, @Salario, @ContatoEmergencia, @Qualificacoes)
END;
