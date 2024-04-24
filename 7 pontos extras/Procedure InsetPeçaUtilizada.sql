CREATE PROCEDURE InsertPeçaUtilizada
    @ReparacaoID INT,
    @CodigoPeça VARCHAR(50),
    @Designacao VARCHAR(100),
    @PrecoUnitario DECIMAL(10,2),
    @Quantidade INT
AS
BEGIN
    INSERT INTO PeçaUtilizada (ReparacaoID, CodigoPeça, Designacao, PrecoUnitario, Quantidade)
    VALUES (@ReparacaoID, @CodigoPeça, @Designacao, @PrecoUnitario, @Quantidade)
END;
