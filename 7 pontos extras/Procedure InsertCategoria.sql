CREATE PROCEDURE CriarTabelaCategoria()
BEGIN
    CREATE TABLE IF NOT EXISTS Categoria (
        idCategoria INT PRIMARY KEY,
        ClienteID INT,
        FuncionarioID INT,
        CustoHora DECIMAL(10,2),
        FOREIGN KEY (ClienteID) REFERENCES Cliente(ClienteID),
        FOREIGN KEY (FuncionarioID) REFERENCES Funcionario(FuncionarioID)
    );
END;

INSERT INTO Categoria (idCategoria, ClienteID, FuncionarioID, CustoHora) VALUES 
(1, 101, 201, 50.00),
(2, 102, 202, 55.00),
(3, 103, 203, 60.00);
