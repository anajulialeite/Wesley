CREATE PROCEDURE InserirDocumentoImagem (
    @IDDocumentoImagem INT,
    @IDVeiculo INT,
    @NomeArquivo VARCHAR(255),
    @TipoDocumentoImagem VARCHAR(100),
    @DataEnvioCriacao DATE,
    @Descricao VARCHAR(255),
    @Responsavel VARCHAR(100),
    @Departamento VARCHAR(100),
    @Arquivo VARCHAR(MAX),
    @Status VARCHAR(20)
)
AS
BEGIN
    INSERT INTO DocumentoImagem (IDDocumentoImagem, IDVeiculo, NomeArquivo, TipoDocumentoImagem, DataEnvioCriacao, Descricao, Responsavel, Departamento, Arquivo, Status)
    VALUES (@IDDocumentoImagem, @IDVeiculo, @NomeArquivo, @TipoDocumentoImagem, @DataEnvioCriacao, @Descricao, @Responsavel, @Departamento, @Arquivo, @Status);
END;
