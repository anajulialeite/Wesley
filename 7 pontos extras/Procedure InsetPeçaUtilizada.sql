CREATE PROCEDURE InserirPecaUtilizada
    @ReparacaoID INT,
    @CodigoPeca VARCHAR(50),
    @Designacao VARCHAR(100),
    @PrecoUnitario DECIMAL(10,2),
    @Quantidade INT
AS
BEGIN
    INSERT INTO PecaUtilizada (ReparacaoID, CodigoPeca, Designacao, PrecoUnitario, Quantidade)
    VALUES (@ReparacaoID, @CodigoPeca, @Designacao, @PrecoUnitario, @Quantidade)
END;
