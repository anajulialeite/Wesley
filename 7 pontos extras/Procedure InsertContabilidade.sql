CREATE PROCEDURE InserirContabilidade (
    @IDPagamento DECIMAL(10,2),
    @DataPagamento DATE,
    @Descricao VARCHAR(100),
    @TipoDePagamento VARCHAR(50),
    @Valor DECIMAL(10,2),
    @MetodoDePagamento VARCHAR(50),
    @NumeroDaFatura VARCHAR(100),
    @Fornecedor VARCHAR(100),
    @Funcionario INT,
    @Despesa VARCHAR(100),
    @Observacoes VARCHAR(MAX)
)
AS
BEGIN
    INSERT INTO Contabilidade (IDPagamento, DataPagamento, Descricao, TipoDePagamento, Valor, MetodoDePagamento, NumeroDaFatura, Fornecedor, Funcionario, Despesa, Observacoes)
    VALUES (@IDPagamento, @DataPagamento, @Descricao, @TipoDePagamento, @Valor, @MetodoDePagamento, @NumeroDaFatura, @Fornecedor, @Funcionario, @Despesa, @Observacoes);
END;
