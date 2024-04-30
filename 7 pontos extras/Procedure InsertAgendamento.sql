CREATE PROCEDURE InserirAgendamento (
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

    INSERT INTO Agendamento (IDVeiculo, DataHoraAgendada, Status)
    VALUES (@IDVeiculo, @DataHoraAgendada, @Status);

    PRINT 'Novo agendamento inserido com sucesso.';
END;
