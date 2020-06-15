
--liquibase formatted sql
--changeset andre.bongiolo:1
CREATE TABLE USUARIOS (
ID          BIGINT PRIMARY KEY,
NOME VARCHAR(100),
SOBRENOME VARCHAR(100),
SENHA VARCHAR(256),
TELEFONE VARCHAR(100),
EMAIL VARCHAR(100)
);
--rollback DROP USUARIOS

--changeset andre.bongiolo:2
COMMENT ON TABLE USUARIOS IS 'Clientes';
COMMENT ON COLUMN USUARIOS.ID IS 'Identificador do cliente';
COMMENT ON COLUMN USUARIOS.NOME IS 'Nome';
COMMENT ON COLUMN USUARIOS.SOBRENOME IS 'Sobrenome';
COMMENT ON COLUMN USUARIOS.EMAIL IS 'E-mail';
--rollback not required

--changeset andre.bongiolo:3
CREATE SEQUENCE SEQ_USUARIOS;
--rollback DROP SEQ_USUARIOS