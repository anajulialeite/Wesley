CREATE PROCEDURE RecuperarClientesPorNome
    @NomeCliente NVARCHAR(100)
AS
BEGIN
    SET NOCOUNT ON;

    SELECT 
        IDCliente,
        NomeCliente,
        Endereco,
        Telefone,
        Email,
        VeiculosRegistrados,
        PlacasVeiculo,
        MarcaVeiculo,
        ModeloVeiculo,
        AnoVeiculo,
        UltimoServicoRealizado,
        DataUltimoServico,
        ProximoServicoAgendado,
        DataProximoServico,
        ObservacoesAdicionais
    FROM 
        Clientes
    WHERE 
        NomeCliente LIKE '%' + @NomeCliente + '%';
END;
