CREATE PROCEDURE InsertDocumentoImagem (
    @DocumentoImagemID INT,
	@VeiculoID INT,
    @NomeArquivo VARCHAR(255),
    @TipoDocumentoImagem VARCHAR(100),
    @DataEnvioCriacao DATE,
    @Descricao VARCHAR(255),
    @Responsavel VARCHAR(100),
    @Departamento VARCHAR(100),
    @Arquivo VARBINARY(MAX),
    @Status VARCHAR(50)
)
AS
BEGIN
    INSERT INTO DocumentoImagem (
        DocumentoImagemID,
		VeiculoID,
        NomeArquivo,
        TipoDocumentoImagem,
        DataEnvioCriacao,
        Descricao,
        Responsavel,
        Departamento,
        Arquivo,
        Status
    )
    VALUES (
        @DocumentoImagemID,
		@VeiculoID,
        @NomeArquivo,
        @TipoDocumentoImagem,
        @DataEnvioCriacao,
        @Descricao,
        @Responsavel,
        @Departamento,
        @Arquivo,
        @Status
    );
END;
