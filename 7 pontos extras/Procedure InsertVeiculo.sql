CREATE PROCEDURE InserirVeiculo (
    @ClienteID INT,
    @Modelo VARCHAR(100),
    @AnoFabricacao YEAR,
    @Chassi VARCHAR(17),
    @Quilometragem INT,
    @Placa VARCHAR(7),
    @DataAquisicao DATE
)
AS
BEGIN
    INSERT INTO Veiculo (ClienteID, Modelo, AnoFabricacao, Chassi, Quilometragem, Placa, DataAquisicao)
    VALUES (@ClienteID, @Modelo, @AnoFabricacao, @Chassi, @Quilometragem, @Placa, @DataAquisicao);
END;

EXEC InserirVeiculo 1, 'Toyota Corolla', '2023-01-01', '123ABC456XYZ789', 50000, 'ABC1234', '2024-05-12';
