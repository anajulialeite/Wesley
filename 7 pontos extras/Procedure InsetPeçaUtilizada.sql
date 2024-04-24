CREATE PROCEDURE InsertPe�aUtilizada
    @ReparacaoID INT,
    @CodigoPe�a VARCHAR(50),
    @Designacao VARCHAR(100),
    @PrecoUnitario DECIMAL(10,2),
    @Quantidade INT
AS
BEGIN
    INSERT INTO Pe�aUtilizada (ReparacaoID, CodigoPe�a, Designacao, PrecoUnitario, Quantidade)
    VALUES (@ReparacaoID, @CodigoPe�a, @Designacao, @PrecoUnitario, @Quantidade)
END;
