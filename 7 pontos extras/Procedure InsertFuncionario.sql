CREATE PROCEDURE InserirFuncionario (
    @Nome VARCHAR(100),
    @Categoria VARCHAR(50),
    @DataContratacao DATE,
    @Salario DECIMAL(10,2),
    @ContatoEmergencia VARCHAR(100),
    @Qualificacoes VARCHAR(MAX)
)
AS
BEGIN
    INSERT INTO Funcionario (Nome, Categoria, DataContratacao, Salario, ContatoEmergencia, Qualificacoes)
    VALUES (@Nome, @Categoria, @DataContratacao, @Salario, @ContatoEmergencia, @Qualificacoes);
END;

EXEC InserirFuncionario 'João Silva', 'Desenvolvedor', '2024-05-12', 5000.00, 'Maria Silva (123) 456-7890', 'Graduação em Ciência da Computação.';