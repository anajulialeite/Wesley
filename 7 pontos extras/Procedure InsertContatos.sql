CREATE TABLE Contatos (
    IDCliente INT,
    IDFuncionario INT,
    Telefone VARCHAR(20),
    Email VARCHAR(100),
    Morada VARCHAR(100),
    PRIMARY KEY (IDCliente, IDFuncionario),
    FOREIGN KEY (IDCliente) REFERENCES Cliente(ClienteID),
    FOREIGN KEY (IDFuncionario) REFERENCES Funcionario(FuncionarioID)
);
