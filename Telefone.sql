--Inserindo Telefone
CREATE TABLE telefone(
    id_pessoa INT,
    idtelefone VARCHAR(20)
)
BEGIN
    INSERT INTO telefone (id_pessoa, idtelefone) VALUES (id_pessoa, telefone);
END;