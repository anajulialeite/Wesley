CREATE PROCEDURE InsertContato (
    @IDCliente INT,
    @IDFuncionario INT,
    @Telefone VARCHAR(20),
    @Email VARCHAR(100),
    @Morada VARCHAR(100)
)
AS
BEGIN
    IF EXISTS (SELECT 1 FROM Cliente WHERE ClienteID = @IDCliente) AND EXISTS (SELECT 1 FROM Funcionario WHERE FuncionarioID = @IDFuncionario)
    BEGIN
        INSERT INTO Contatos (IDCliente, IDFuncionario, Telefone, Email, Morada)
        VALUES (@IDCliente, @IDFuncionario, @Telefone, @Email, @Morada);
        PRINT 'Contato inserido com sucesso.';
    END
    ELSE
    BEGIN
        PRINT 'Cliente ou funcionário não encontrado.';
    END
END;
