CREATE PROCEDURE InserirTempoMaoDeObra (
    @ReparacaoID INT,
    @FuncionarioID INT,
    @TempoGasto INT
)
AS
BEGIN
    SET NOCOUNT ON;

    INSERT INTO TempoMaoDeObra (ReparacaoID, FuncionarioID, TempoGasto)
    VALUES (@ReparacaoID, @FuncionarioID, @TempoGasto);
END;