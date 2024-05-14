CREATE PROCEDURE InserirDocumentoImagem (
    @IDVeiculo INT,
    @NomeArquivo VARCHAR(255),
    @TipoDocumentoImagem VARCHAR(100),
    @DataEnvioCriacao DATE,
    @Descricao VARCHAR(255),
    @Arquivo VARCHAR(MAX),
    @Status VARCHAR(20)
)
AS
BEGIN
    SET NOCOUNT ON;

    INSERT INTO DocumentoImagem (IDVeiculo, NomeArquivo, TipoDocumentoImagem, DataEnvioCriacao, Descricao, Arquivo, Status)
    VALUES (@IDVeiculo, @NomeArquivo, @TipoDocumentoImagem, @DataEnvioCriacao, @Descricao, @Arquivo, @Status);
END;