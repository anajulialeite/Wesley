CREATE PROCEDURE InsertPecaEmArmazem
    @CodigoPe�a VARCHAR(50),
    @Descricao VARCHAR(100),
    @CustoUnitario DECIMAL(10,2),
    @QuantidadeAtual INT
AS
BEGIN
    INSERT INTO Pe�aEmArmazem (CodigoPe�a, Descricao, CustoUnitario, QuantidadeAtual)
    VALUES (@CodigoPe�a, @Descricao, @CustoUnitario, @QuantidadeAtual)
END;
