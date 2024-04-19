--Inserir Pessoa
CREATE PROCEDURE sp_InserirPessoa
(
    @IdPessoa INT,
    @Nome     VARCHAR(100)
)
AS
    BEGIN



        INSERT INTO Pessoas (IdPessoa, Nome) VALUES (@IdPessoa, @Nome);
    END;

--Inserir Pessoa Fisica
GO
CREATE PROCEDURE spInserirPessoaFisica
(
    @IdPessoaFisica INT,
    @CPF            VARCHAR(100),
    @RG             VARCHAR(15),
    @DataNascimento DATE,
    @IdPessoa       INT
)
AS
    BEGIN

        INSERT INTO PessoasFisicas
        (
            IdPessoaFisica,
            CPF,
            RG,
            DataNascimento,
            IdPessoa
        )
        VALUES
        (@IdPessoaFisica, @CPF, @RG, @DataNascimento, @IdPessoa);

    END;