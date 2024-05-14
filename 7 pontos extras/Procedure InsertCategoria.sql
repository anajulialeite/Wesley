CREATE PROCEDURE InsertCategoria (
    @Telefone VARCHAR(20),
    @Email VARCHAR(100),
    @Morada VARCHAR(100),
    @ClienteID INT,
    @FuncionarioID INT
)
AS
BEGIN
    INSERT INTO Categoria (Telefone, Email, Morada, ClienteID, FuncionarioID)
    VALUES (@Telefone, @Email, @Morada, @ClienteID, @FuncionarioID);
END;

EXEC InserirCategoria '123456789', 'exemplo@email.com', 'Rua Exemplo, 123', 1, 1;