    --liquibase formatted sql
                              --changeset david.jandrey:1
                              CREATE TABLE BORDAS (
                              ID          BIGINT PRIMARY KEY,
                              PRECO FLOAT,
                              DESCRICAO VARCHAR(255)
                              );
                              --rollback DROP BORDAS

                              --changeset david.jandrey:2
                              COMMENT ON TABLE BORDAS IS 'Bordas';
                              COMMENT ON COLUMN BORDAS.ID IS 'Identificador da borda';
                              COMMENT ON COLUMN BORDAS.DESCRICAO IS 'Descrição';
                              --rollback not required

                              --changeset david.jandrey:3
                              CREATE SEQUENCE SEQ_BORDAS;
                              --rollback DROP SEQ_BORDAS