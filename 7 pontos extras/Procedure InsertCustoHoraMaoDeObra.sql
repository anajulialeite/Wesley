CREATE PROCEDURE InsertCustoHoraMaoDeObra
    @Categoria VARCHAR(50),
    @CustoHora DECIMAL(10,2)
AS
BEGIN
    INSERT INTO CustoHoraMaoDeObra (Categoria, CustoHora)
    VALUES (@Categoria, @CustoHora)
END;
