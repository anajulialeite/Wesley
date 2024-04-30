CREATE PROCEDURE InserirtFeedbackCliente (
    @IDCliente INT,
    @DataEHora DATETIME,
    @Avaliacao VARCHAR(100),
    @Comentario VARCHAR(50),
    @ServicoAvaliado VARCHAR(50),
    @RespostaDaOficina VARCHAR(50),
    @StatusDoFeedback VARCHAR(20),
    @CanalDoFeedback VARCHAR(50),
    @AcaoTomada VARCHAR(100)
)
AS
BEGIN
    INSERT INTO FeedbackDoCliente (IDCliente, DataEHora, Avaliacoes, Comentario, ServicoAvaliado, RespostaDaOficina, StatusDoFeedback, CanalDoFeedback, AcaoTomada)
    VALUES (@IDCliente, @DataEHora, @Avaliacao, @Comentario, @ServicoAvaliado, @RespostaDaOficina, @StatusDoFeedback, @CanalDoFeedback, @AcaoTomada);
END;
