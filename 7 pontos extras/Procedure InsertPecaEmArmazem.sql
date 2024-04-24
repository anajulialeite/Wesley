CREATE PROCEDURE InsertPecaEmArmazem
    @CodigoPeša VARCHAR(50),
    @Descricao VARCHAR(100),
    @CustoUnitario DECIMAL(10,2),
    @QuantidadeAtual INT
AS
BEGIN
    INSERT INTO PešaEmArmazem (CodigoPeša, Descricao, CustoUnitario, QuantidadeAtual)
    VALUES (@CodigoPeša, @Descricao, @CustoUnitario, @QuantidadeAtual)
END;
