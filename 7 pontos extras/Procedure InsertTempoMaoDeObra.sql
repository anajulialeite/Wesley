CREATE PROCEDURE InsertTempoMaoDeObra
    @ReparacaoID INT,
    @FuncionarioID INT,
    @TempoGasto INT
AS
BEGIN
    INSERT INTO TempoMaoDeObra (ReparacaoID, FuncionarioID, TempoGasto)
    VALUES (@ReparacaoID, @FuncionarioID, @TempoGasto)
END;
