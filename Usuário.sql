--Inserir Usuario
CREATE PROCEDURE sp_InserirUs�ario
(
@IdUsuario INT,
@NickName INT,
@Senha VARCHAR(100)
)
AS
BEGIN

INSERT INTO Usuario (Idusuario, NickName, Senha, IdPessoaFisica) values (@Idusuario, @NickName);
END;