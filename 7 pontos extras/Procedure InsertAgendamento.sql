CREATE PROCEDURE InserirAgendamento (
    @VeiculoID INT,
    @DataHoraAgendada DATETIME,
    @Status VARCHAR(20)
)
AS
BEGIN
    SET NOCOUNT ON;

    INSERT INTO Agendamento (VeiculoID, DataHoraAgendada, Status)
    VALUES (@VeiculoID, @DataHoraAgendada, @Status);
END;