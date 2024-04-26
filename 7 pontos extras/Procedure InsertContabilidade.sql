CREATE PROCEDURE InserirTransacaoContabilidade
    @DataTransacao DATE,
    @Descricao VARCHAR(100),
    @TipoTransacao VARCHAR(10),
    @Valor MONEY,
    @MetodoPagamento VARCHAR(20),
    @NumeroFatura VARCHAR(50) = NULL,
    @IDCliente INT = NULL,
    @IDFornecedor INT = NULL,
    @IDFuncionario INT = NULL,
    @Categoria VARCHAR(50),
    @Observacoes VARCHAR(MAX) = NULL
AS
BEGIN
    SET NOCOUNT ON;

    INSERT INTO Contabilidade (DataTransacao, Descricao, TipoTransacao, Valor, MetodoPagamento, NumeroFatura, IDCliente, IDFornecedor, IDFuncionario, Categoria, Observacoes)
    VALUES (@DataTransacao, @Descricao, @TipoTransacao, @Valor, @MetodoPagamento, @NumeroFatura, @IDCliente, @IDFornecedor, @IDFuncionario, @Categoria, @Observacoes);
END;
