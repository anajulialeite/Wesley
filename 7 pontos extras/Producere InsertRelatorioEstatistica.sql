CREATE PROCEDURE InserirRelatorioEstatistica (
    @IDRelatorio INT,
    @IDPagamento INT,
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
    SET NOCOUNT ON;

    INSERT INTO RelatorioEstatistica (IDRelatorio, IDPagamento, TipoRegistro, DataRegistro, Responsavel, Departamento, DadosRegistro, ResultadosAnalises, Observacoes, ArquivoAnexado, StatusRegistro, Destinatario)
    VALUES (@IDRelatorio, @IDPagamento, @TipoRegistro, @DataRegistro, @Responsavel, @Departamento, @DadosRegistro, @ResultadosAnalises, @Observacoes, @ArquivoAnexado, @StatusRegistro, @Destinatario);
END;
