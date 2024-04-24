CREATE PROCEDURE InsertPagamento (
    @IDPagamento DECIMAL(10,2),
    @IDVeiculo INT,
    @DataHoraAgendada DATE,
    @Status VARCHAR(20)
)
AS
BEGIN
    
    IF NOT EXISTS (SELECT 1 FROM Veiculo WHERE VeiculoID = @IDVeiculo)
    BEGIN
        PRINT 'O veículo especificado não existe na base de dados.';
        RETURN;
    END;

    IF EXISTS (SELECT 1 FROM Pagamento WHERE IDPagamento = @IDPagamento)
    BEGIN
        PRINT 'Já existe um pagamento com o ID especificado.';
        RETURN;
    END;

    INSERT INTO Pagamento (IDPagamento, IDVeiculo, DataHoraAgendada, Status)
    VALUES (@IDPagamento, @IDVeiculo, @DataHoraAgendada, @Status);

    PRINT 'Novo pagamento inserido com sucesso.';
END;
