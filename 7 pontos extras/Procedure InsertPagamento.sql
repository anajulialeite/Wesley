CREATE PROCEDURE InserirPagamento (
    @IDVeiculo INT,
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
    SET NOCOUNT ON;

    INSERT INTO Pagamentos (IDVeiculo, DataPagamento, Descricao, TipoDePagamento, Valor, MetodoDePagamento, NumeroDaFatura, Fornecedor, Funcionario, Despesa, Observacoes)
    VALUES (@IDVeiculo, @DataPagamento, @Descricao, @TipoDePagamento, @Valor, @MetodoDePagamento, @NumeroDaFatura, @Fornecedor, @Funcionario, @Despesa, @Observacoes);
END;
