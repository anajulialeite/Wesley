CREATE PROCEDURE InserirControleDePermissao (
    @IDFuncionario INT,
    @NomeDoUsuario VARCHAR(100),
    @Cargo VARCHAR(50),
    @NomeDeUsuario VARCHAR(100),
    @Senha VARCHAR(255),
    @NivelDeAcesso VARCHAR(100),
    @Departamento VARCHAR(100),
    @DataEHoraDeAcesso DATETIME,
    @OperacoesRealizadas VARCHAR(100),
    @ResultadoDaOperacao VARCHAR(50),
    @IPDeAcesso VARCHAR(255),
    @AcaoDeBloqueio VARCHAR(255),
    @Observacoes VARCHAR(MAX)
)
AS
BEGIN
    INSERT INTO ControleDePermissao (IDFuncionario, NomeDoUsuario, Cargo, NomeDeUsuario, Senha, NivelDeAcesso, Departamento, DataEHoraDeAcesso, OperacoesRealizadas, ResultadoDaOperacao, IPDeAcesso, AcaoDeBloqueio, Observacoes)
    VALUES (@IDFuncionario, @NomeDoUsuario, @Cargo, @NomeDeUsuario, @Senha, @NivelDeAcesso, @Departamento, @DataEHoraDeAcesso, @OperacoesRealizadas, @ResultadoDaOperacao, @IPDeAcesso, @AcaoDeBloqueio, @Observacoes);
END;
