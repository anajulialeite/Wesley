--Inserindo E-mail
CREATE TABLE Emails
(
IdEmail INT NOT NULL,
IdPessoa INT NOT NULL,
Email VARCHAR(100),
CONSTRAINT PKEmail PRIMARY KEY ([Email]),
CONSTRAINT FK_Pessoas_Tem_Email FOREIGN KEY ([IdPessoa])
REFERENCES [Pessoas] ([IdPessoas]));