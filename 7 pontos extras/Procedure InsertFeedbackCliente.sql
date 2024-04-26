CREATE PROCEDURE InsertFeedbackCliente (
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
    INSERT INTO FeedbackDoCliente (IDCliente, DataEHora, Avaliações, Comentário, ServiçoAvaliado, RespostaDaOficina, StatusDoFeedback, CanalDoFeedback, AçãoTomada)
    VALUES (@IDCliente, @DataEHora, @Avaliacao, @Comentario, @ServicoAvaliado, @RespostaDaOficina, @StatusDoFeedback, @CanalDoFeedback, @AcaoTomada);
END;

