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

CREATE TABLE RecuperarClientesPorNome (
    ClienteID INT PRIMARY KEY,
    Nome VARCHAR(100),
    Morada VARCHAR(100),
    Telefone VARCHAR(20),
    Email VARCHAR(100),
    VeiculoRegistrado VARCHAR (100),
    Placa VARCHAR(20),
    Marca VARCHAR(100),
    Modelo VARCHAR(100),
    Ano INT,
    DataDoUltimoServico DATE,
    ProximoServicoAgendado DATE,
    Observacao VARCHAR(MAX)
    FOREIGN KEY (ClienteID) REFERENCES Cliente(ClienteID)
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
    Destinatario VARCHAR(100)
);

CREATE TABLE FeedbackCliente (
    IDFeedback VARCHAR(255) PRIMARY KEY,
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

CREATE TABLE Contabilidade (
    IDPagamento DECIMAL(10,2) PRIMARY KEY,
    DataPagamento DATE,
    Descricao VARCHAR(100),
    TipoDePagamento VARCHAR(50),
    Valor INT,
    MetodoDePagamento VARCHAR(50),
    NumeroDaFatura VARCHAR(100),
    Fornecedor VARCHAR(100),
    Funcionario INT,
    Despesa VARCHAR(100),
    Observacoes VARCHAR(MAX),
    FOREIGN KEY (IDPagamento) REFERENCES Pagamento(IDPagamento)
);

CREATE TABLE ControleDePermissao (
    IDFuncionario INT PRIMARY KEY,
    NomeDoUsuario VARCHAR(100),
    Cargo VARCHAR(50),
    NomeDeUsuarui VARCHAR(100),
    Senha VARCHAR(255),
    NivelDeAcesso VARCHAR(100),
    Departamento VARCHAR(100),
    DataEHoraDeAcesso DATETIME,
    OperacoesRealizadas VARCHAR(100),
    ResultadoDaOperacao VARCHAR(50),
    IPDeAcesso VARCHAR(255),
    AcaoDeBloqueio VARCHAR(255),
    Observações VARCHAR(MAX),
);

CREATE TABLE DocumentoImagem (
    IDDocumentoImagem INT PRIMARY KEY,
    IDVeiculo INT,
    NomeArquivo VARCHAR(255),
    TipoDocumentoImagem VARCHAR(100),
    DataEnvioCriacao DATE,
    Descricao VARCHAR(255),
    Responsável VARCHAR(100),
    Departamento VARCHAR(100),
    Arquivo VARCHAR(MAX),
    Status VARCHAR (20),
    FOREIGN KEY (IDVeiculo) REFERENCES Veiculo(VeiculoID)
);
