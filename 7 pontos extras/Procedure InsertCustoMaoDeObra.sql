CREATE PROCEDURE InserirCustoMaoDeObra (
    @DataPagamento DATE,
    @Descricao VARCHAR(100),
    @TipoDePagamento VARCHAR(50),
    @Valor DECIMAL(10,2),
    @MetodoDePagamento VARCHAR(50),
    @NumeroDaFatura VARCHAR(100),
    @Fornecedor VARCHAR(100),
    @FuncionarioID INT,
    @Despesa VARCHAR(100),
    @Observacoes VARCHAR(MAX)
)
AS
BEGIN
    INSERT INTO CustoMaoDeObra (DataPagamento, Descricao, TipoDePagamento, Valor, MetodoDePagamento, NumeroDaFatura, Fornecedor, FuncionarioID, Despesa, Observacoes)
    VALUES (@DataPagamento, @Descricao, @TipoDePagamento, @Valor, @MetodoDePagamento, @NumeroDaFatura, @Fornecedor, @FuncionarioID, @Despesa, @Observacoes);
END;

EXEC InserirCustoMaoDeObra '2024-05-12', 'Manutenção do sistema de iluminação', 'Transferência bancária', 500.00, 'Transferência bancária', 'FAT123456', 'ABC Fornecedores', 1, 'Manutenção', 'Observações sobre a manutenção realizada.';
