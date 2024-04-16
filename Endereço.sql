CREATE TABLE Enderecos
(
IdEndereco INT NOT NULL,
IdPessoa INT NOT NULL,
Rua VARCHAR(100),
Bairro VARCHAR(100),
Logradouro VARCHAR(100),
CEP VARCHAR(10),
CONSTRAINT PK_Endereco PRIMARY KEY ([IdEndereco]),
CONSTRAINT FK_Pessoa_Tem_Endereco FOREIGN KEY([IdPessoa])
REFERENCES [Pessoas]([IdPessoa]));