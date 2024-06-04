CREATE DATABASE OficinaDeAutomoveis;

USE OficinaDeAutomoveis;

CREATE TABLE Cliente (
    ClienteID INT PRIMARY KEY,
    Nome VARCHAR(100),
    DataNascimento DATE,
    Genero VARCHAR(10),
    CPF VARCHAR(14),
    EstadoCivil VARCHAR(20),
    Observacao VARCHAR(MAX)
);

CREATE TABLE Veiculo (
    VeiculoID INT PRIMARY KEY,
    ClienteID INT,
    Modelo VARCHAR(100),
    AnoFabricacao SMALLINT,
    Chassi VARCHAR(17),
    Quilometragem INT,
    Placa VARCHAR(7),
    DataAquisicao DATE,
    FOREIGN KEY (ClienteID) REFERENCES Cliente(ClienteID)
);

CREATE TABLE Funcionario (
    FuncionarioID INT PRIMARY KEY,
    Nome VARCHAR(100),
    Categoria VARCHAR(50),
    DataContratacao DATE,
    Salario DECIMAL(10,2),
    ContatoEmergencia VARCHAR(100),
    Qualificacoes VARCHAR(MAX)
);


CREATE TABLE Categoria (
    idCategoria INT PRIMARY KEY,
    ClienteID INT,
    FuncionarioID INT,
    CustoHora DECIMAL(10,2),
    FOREIGN KEY (ClienteID) REFERENCES Cliente(ClienteID),
    FOREIGN KEY (FuncionarioID) REFERENCES Funcionario(FuncionarioID)
);

CREATE TABLE CustoMaoDeObra (
    idCustoMaoDeObra INT PRIMARY KEY,
    DataPagamento DATE,
    Descricao VARCHAR(100),
    TipoDePagamento VARCHAR(50),
    Valor DECIMAL(10,2),
    MetodoDePagamento VARCHAR(50),
    NumeroDaFatura VARCHAR(100),
    Fornecedor VARCHAR(100),
    FuncionarioID INT,
    Despesa VARCHAR(100),
    Observacoes VARCHAR(MAX),
    FOREIGN KEY (FuncionarioID) REFERENCES Funcionario(FuncionarioID)
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
    QuantidadeAtual INT,
    PecaID INT,
    FOREIGN KEY (PecaID) REFERENCES PecaUtilizada(PecaID)
);


CREATE TABLE Agendamento (
    IDAgendamento INT PRIMARY KEY,
    VeiculoID INT,
    DataHoraAgendada DATETIME,
    Status VARCHAR(20),
    FOREIGN KEY (VeiculoID) REFERENCES Veiculo(VeiculoID)
);

CREATE TABLE Pagamentos (
    IDPagamento INT PRIMARY KEY,
    IDVeiculo INT,
    DataPagamento DATE,
    Descricao VARCHAR(100),
    TipoDePagamento VARCHAR(50),
    Valor DECIMAL(10,2),
    MetodoDePagamento VARCHAR(50),
    NumeroDaFatura VARCHAR(100),
    Fornecedor VARCHAR(100),
    Funcionario INT,
    Despesa VARCHAR(100),
    Observacoes VARCHAR(MAX),
    FOREIGN KEY (IDVeiculo) REFERENCES Veiculo(VeiculoID),
    FOREIGN KEY (Funcionario) REFERENCES Funcionario(FuncionarioID)
);

CREATE TABLE FeedbackCliente (
    IDFeedback INT PRIMARY KEY,
    IDCliente INT,
    DataEHora DATETIME,
    Avaliacoes VARCHAR(100),
    Comentario VARCHAR(50),
    ServicoAvaliado VARCHAR(50),
    RespostaDaOficina VARCHAR(50),
    StatusDoFeedback VARCHAR(20),
    CanalDoFeedback VARCHAR(50),
    AcaoTomada VARCHAR(100),
    FOREIGN KEY (IDCliente) REFERENCES Cliente(ClienteID)
);

CREATE TABLE ControleDePermissao (
    IDFuncionario INT PRIMARY KEY,
    NomeDoUsuario VARCHAR(100),
    Cargo VARCHAR(50),
    NomeDeUsuario VARCHAR(100),
    Senha VARCHAR(255),
    NivelDeAcesso VARCHAR(100),
    Departamento VARCHAR(100),
    DataEHoraDeAcesso DATETIME,
    OperacoesRealizadas VARCHAR(100),
    ResultadoDaOperacao VARCHAR(50),
    IPDeAcesso VARCHAR(255),
    AcaoDeBloqueio VARCHAR(255),
    Observacoes VARCHAR(MAX),
    FOREIGN KEY (IDFuncionario) REFERENCES Funcionario(FuncionarioID)
);

CREATE TABLE DocumentoImagem (
    IDDocumentoImagem INT PRIMARY KEY,
    IDVeiculo INT,
    NomeArquivo VARCHAR(255),
    TipoDocumentoImagem VARCHAR(100),
    DataEnvioCriacao DATE,
    Descricao VARCHAR(255),
    Arquivo VARCHAR(MAX),
    Status VARCHAR (20),
    FOREIGN KEY (IDVeiculo) REFERENCES Veiculo(VeiculoID)
);

CREATE TABLE RelatorioEstatistica (
    IDRegistro INT PRIMARY KEY,
    IDRelatorio INT,
    IDPagamento INT,
    TipoRegistro VARCHAR(20),
    DataRegistro DATETIME,
    Responsavel VARCHAR(100),
    Departamento VARCHAR(100),
    DadosRegistro VARCHAR(MAX),
    ResultadosAnalises VARCHAR(MAX),
    Observacoes VARCHAR(MAX),
    ArquivoAnexado VARCHAR(255),
    StatusRegistro VARCHAR(20),
    Destinatario VARCHAR(100),
    FOREIGN KEY (IDPagamento) REFERENCES Pagamentos(IDPagamento)
);

CREATE TABLE Contatos (
    IDCliente INT PRIMARY KEY,
    IDFuncionario INT,
    Telefone VARCHAR(20),
    Email VARCHAR(100),
    Morada VARCHAR(100),
    FOREIGN KEY (IDCliente) REFERENCES Cliente(ClienteID),
    FOREIGN KEY (IDFuncionario) REFERENCES Funcionario(FuncionarioID)
);
