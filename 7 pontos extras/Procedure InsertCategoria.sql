CREATE PROCEDURE InserirCategoria
    @ClienteID INT,
    @FuncionarioID INT,
    @CustoHora DECIMAL(10, 2)
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @idCategoria INT;

    SELECT @idCategoria = ISNULL(MAX(idCategoria), 0) + 1 FROM Categoria;

    INSERT INTO Categoria (idCategoria, ClienteID, FuncionarioID, CustoHora)
    VALUES (@idCategoria, @ClienteID, @FuncionarioID, @CustoHora);
END;

EXEC InserirCategoria @ClienteID = 2, @FuncionarioID = 3, @CustoHora = 50.00;
