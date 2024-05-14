CREATE TABLE PecaEmArmazem (
    PecaEmArmazemID INT PRIMARY KEY,
    CodigoPeca VARCHAR(50),
    Descricao VARCHAR(100),
    CustoUnitario DECIMAL(10,2),
    QuantidadeAtual INT,
    PecaID INT,
    FOREIGN KEY (PecaID) REFERENCES PecaUtilizada(PecaID)
);