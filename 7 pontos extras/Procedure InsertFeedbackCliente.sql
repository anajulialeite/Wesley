CREATE PROCEDURE InserirFeedbackCliente (
    @IDCliente INT,
    @DataEHora DATETIME,
    @Avaliacoes VARCHAR(100),
    @Comentario VARCHAR(50),
    @ServicoAvaliado VARCHAR(50),
    @RespostaDaOficina VARCHAR(50),
    @StatusDoFeedback VARCHAR(20),
    @CanalDoFeedback VARCHAR(50),
    @AcaoTomada VARCHAR(100)
)
AS
BEGIN
    SET NOCOUNT ON;

    INSERT INTO FeedbackCliente (IDCliente, DataEHora, Avaliacoes, Comentario, ServicoAvaliado, RespostaDaOficina, StatusDoFeedback, CanalDoFeedback, AcaoTomada)
    VALUES (@IDCliente, @DataEHora, @Avaliacoes, @Comentario, @ServicoAvaliado, @RespostaDaOficina, @StatusDoFeedback, @CanalDoFeedback, @AcaoTomada);
END;
