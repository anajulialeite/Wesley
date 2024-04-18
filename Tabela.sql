CREATE TABLE Pessoas
(
    IdPessoa INT NOT NULL,
    Nome VARCHAR(100) NOT NULL,
    CONSTRAINT PK_Pessoas PRIMARY KEY ([IdPessoa])
)

CREATE TABLE Enderecos
(
    IdEndereco INT NOT NULL,
    IdPessoa   INT NOT NULL,
    Rua        VARCHAR(100),
    Bairro     VARCHAR(100),
    Logradouro VARCHAR(100),
    CEP        VARCHAR(10),
    CONSTRAINT PK_Endereco PRIMARY KEY ([IdEndereco]),
	CONSTRAINT FK_Pessoa_Tem_Endereco FOREIGN KEY([IdPessoa])
	REFERENCES [Pessoas]([IdPessoa])
);
CREATE TABLE Emails
(
    IdEmail  INT NOT NULL,
    IdPessoa INT NOT NULL,
    Email    VARCHAR(100),
    CONSTRAINT PK_Email PRIMARY KEY ([Email]),
	CONSTRAINT FK_Pessoas_Tem_Email FOREIGN KEY([IdPessoa])
	REFERENCES [Pessoas]([IdPessoa])
);

CREATE TABLE Telefones
(
    IdTelefone INT NOT NULL,
    IdPessoa   INT NOT NULL,
    Telefone   VARCHAR(100),
    CONSTRAINT PK_Telefone PRIMARY KEY (Telefone),
	CONSTRAINT FK_Pessoas_Tem_Telefones FOREIGN KEY([IdPessoa])
	REFERENCES [Pessoas]([IdPessoa])
);


CREATE TABLE PessoasFisicas
(
    IdPessoaFisica INT NOT NULL,
    CPF            VARCHAR(14),
    RG             VARCHAR(15),
    DataNascimento DATE NULL,
    IdPessoa       INT NOT NULL,
    CONSTRAINT PK_PessoasFisicas PRIMARY KEY ([IdPessoaFisica]),
    CONSTRAINT UNQ_PessoasFisicasCPF UNIQUE ([CPF])
);

CREATE TABLE Usuarios
(
    IdUsuario      INT NOT NULL,
    NickName       VARCHAR(100) NOT NULL,
    Senha          VARCHAR(800) NOT NULL,
    IdPessoaFisica INT NOT NULL,
    CONSTRAINT PK_Usuarios PRIMARY KEY ([IdUsuario])
)

ALTER TABLE [Usuarios] ADD 
CONSTRAINT FK_Usuario_e_Pessoa FOREIGN KEY([IdPessoaFisica])
REFERENCES [PessoasFisicas]([IdPessoaFisica])