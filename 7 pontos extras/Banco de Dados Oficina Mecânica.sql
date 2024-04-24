CREATE DATABASE OficinadeAutomoveis;

USE OficinaAutomoveis;

CREATE TABLE Cliente (
    ClienteID INT PRIMARY KEY,
    Nome VARCHAR(100),
    Morada VARCHAR(100),
    Telefone VARCHAR(20),
    Email VARCHAR(100),
    DataNascimento DATE,
    Genero VARCHAR(10),
    CPF VARCHAR(20),
    EstadoCivil VARCHAR(20),
    Observacao VARCHAR(MAX)
);

CREATE TABLE Veiculo (
    VeiculoID INT PRIMARY KEY,
    ClienteID INT,
    Modelo VARCHAR(100),
    AnoFabricacao INT,
    Chassi VARCHAR(100),
    Quilometragem INT,
    Placa VARCHAR(20),
    DataAquisicao DATE,
    FOREIGN KEY (ClienteID) REFERENCES Cliente(ClienteID)
);

CREATE TABLE Funcionario (
    FuncionarioID INT PRIMARY KEY,
    Nome VARCHAR(100),
    Morada VARCHAR(100),
    Telefone VARCHAR(20),
    Categoria VARCHAR(50),
    DataContratacao DATE,
    Salario DECIMAL(10,2),
    ContatoEmergencia VARCHAR(100),
    Qualificacoes VARCHAR(MAX)
);

CREATE TABLE CustoHoraMaoDeObra (
    Categoria VARCHAR(50) PRIMARY KEY,
    CustoHora DECIMAL(10,2)
);

CREATE TABLE Reparacao (
    ReparacaoID INT PRIMARY KEY,
    VeiculoID INT,
    ClienteID INT,
    DataReparacao DATE,
    CustoTotal DECIMAL(10,2),
    Descricao VARCHAR(MAX),
    Status VARCHAR(20),
    Observacoes VARCHAR(MAX),
    FOREIGN KEY (VeiculoID) REFERENCES Veiculo(VeiculoID),
    FOREIGN KEY (ClienteID) REFERENCES Cliente(ClienteID)
);

CREATE TABLE PecaUtilizada (
    PecaID INT PRIMARY KEY,
    ReparacaoID INT,
    CodigoPeca VARCHAR(50),
    Designacao VARCHAR(100),
    PrecoUnitario DECIMAL(10,2),
    Quantidade INT,
    FOREIGN KEY (ReparacaoID) REFERENCES Reparacao(ReparacaoID)
);

CREATE TABLE TempoMaoDeObra (
    TempoMaoDeObraID INT PRIMARY KEY,
    ReparacaoID INT,
    FuncionarioID INT,
    TempoGasto INT,
    FOREIGN KEY (ReparacaoID) REFERENCES Reparacao(ReparacaoID),
    FOREIGN KEY (FuncionarioID) REFERENCES Funcionario(FuncionarioID)
);

CREATE TABLE PecaEmArmazem (
    PecaEmArmazemID INT PRIMARY KEY,
    CodigoPeca VARCHAR(50),
    Descricao VARCHAR(100),
    CustoUnitario DECIMAL(10,2),
    QuantidadeAtual INT
);

CREATE TABLE Agendamento (
	IDAgendamento INT PRIMARY KEY,
	IDVeiculo INT,
	DataHoraAgendada DATE,
	Status VARCHAR(20),
	FOREIGN KEY (IDVeiculo) REFERENCES Veiculo(VeiculoID)
);

CREATE TABLE Pagamento (
	IDPagamento DECIMAL(10,2) PRIMARY KEY,
	IDVeiculo INT,
	DataHoraAgendada DATE,
	Status VARCHAR(20),
	FOREIGN KEY (IDVeiculo) REFERENCES Veiculo(VeiculoID)
);