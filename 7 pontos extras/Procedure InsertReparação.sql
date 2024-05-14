CREATE PROCEDURE InserirReparacao (
    @VeiculoID INT,
    @ClienteID INT,
    @DataReparacao DATE,
    @CustoTotal DECIMAL(10,2),
    @Descricao VARCHAR(MAX),
    @Status VARCHAR(20),
    @Observacoes VARCHAR(MAX)
)
AS
BEGIN
    SET NOCOUNT ON;

    INSERT INTO Reparacao (VeiculoID, ClienteID, DataReparacao, CustoTotal, Descricao, Status, Observacoes)
    VALUES (@VeiculoID, @ClienteID, @DataReparacao, @CustoTotal, @Descricao, @Status, @Observacoes);
END;