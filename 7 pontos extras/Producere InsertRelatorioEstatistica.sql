CREATE PROCEDURE InserirtRelatorioEstatistica (
    @IDRegistro INT,
    @IDRelatorio INT = NULL,
    @IDPagamento INT = NULL,
    @TipoRegistro VARCHAR(20),
    @DataRegistro DATETIME,
    @Responsavel VARCHAR(100),
    @Departamento VARCHAR(100),
    @DadosRegistro VARCHAR(MAX),
    @ResultadosAnalises VARCHAR(MAX),
    @Observacoes VARCHAR(MAX),
    @ArquivoAnexado VARCHAR(255),
    @StatusRegistro VARCHAR(20),
    @Destinatario VARCHAR(100)
)
AS
BEGIN
    INSERT INTO RelatorioEstatistica (
        IDRegistro,
	IDRelatorio,
        IDPagamento,
        TipoRegistro,
        DataRegistro,
        Responsavel,
        Departamento,
        DadosRegistro,
        ResultadosAnalises,
        Observacoes,
        ArquivoAnexado,
        StatusRegistro,
        Destinatario
    )
    VALUES (
        @IDRegistro,
	@IDRelatorio,
        @IDPagamento,
        @TipoRegistro,
        @DataRegistro,
        @Responsavel,
        @Departamento,
        @DadosRegistro,
        @ResultadosAnalises,
        @Observacoes,
        @ArquivoAnexado,
        @StatusRegistro,
        @Destinatario
    );
END;
