CREATE PROCEDURE InserirPecaEmArmazem
    @CodigoPeca VARCHAR(50),
    @Descricao VARCHAR(100),
    @CustoUnitario DECIMAL(10,2),
    @QuantidadeAtual INT
AS
BEGIN
    INSERT INTO PecaEmArmazem (CodigoPeca, Descricao, CustoUnitario, QuantidadeAtual)
    VALUES (@CodigoPeca, @Descricao, @CustoUnitario, @QuantidadeAtual)
END;
