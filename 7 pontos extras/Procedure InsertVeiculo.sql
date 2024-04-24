CREATE PROCEDURE InsertVeiculo
    @ClienteID INT,
    @Modelo VARCHAR(100),
    @AnoFabricacao INT,
    @Chassi VARCHAR(100),
    @Quilometragem INT,
    @Placa VARCHAR(20),
    @DataAquisicao DATE
AS
BEGIN
    INSERT INTO Veiculo (ClienteID, Modelo, AnoFabricacao, Chassi, Quilometragem, Placa, DataAquisicao)
    VALUES (@ClienteID, @Modelo, @AnoFabricacao, @Chassi, @Quilometragem, @Placa, @DataAquisicao)
END;
