CREATE PROCEDURE InsertPecaEmArmazem
    @CodigoPeça VARCHAR(50),
    @Descricao VARCHAR(100),
    @CustoUnitario DECIMAL(10,2),
    @QuantidadeAtual INT
AS
BEGIN
    INSERT INTO PeçaEmArmazem (CodigoPeça, Descricao, CustoUnitario, QuantidadeAtual)
    VALUES (@CodigoPeça, @Descricao, @CustoUnitario, @QuantidadeAtual)
END;
