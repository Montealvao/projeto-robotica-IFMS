CREATE DATABASE IF NOT EXISTS projeto_robotica
    CHARACTER SET utf8mb4
    COLLATE utf8mb4_unicode_ci;

USE portal_robotica;

CREATE TABLE estudante (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(150) NOT NULL,
    minibio TEXT,
    foto VARCHAR(255)
);

CREATE TABLE atividade (
    id SERIAL PRIMARY KEY,
    titulo VARCHAR(180) NOT NULL,
    tipo VARCHAR(40) NOT NULL,
    descricao TEXT NOT NULL,
    data_inicio DATE NOT NULL,
    data_fim DATE,
    situacao VARCHAR(30) NOT NULL,
    coordenador_id BIGINT NOT NULL,
    CONSTRAINT fk_atividade_coordenador
        FOREIGN KEY (coordenador_id) REFERENCES coordenador(id)
        ON DELETE RESTRICT,
    CONSTRAINT ck_atividade_datas
        CHECK (data_fim IS NULL OR data_fim >= data_inicio)
);


CREATE TABLE participacao (
    estudante_id BIGINT NOT NULL,
    atividade_id BIGINT NOT NULL,
    funcao VARCHAR(100),
    descricao_contribuicao TEXT,
    PRIMARY KEY (estudante_id, atividade_id),
    CONSTRAINT fk_participacao_estudante
        FOREIGN KEY (estudante_id) REFERENCES estudante(id)
        ON DELETE CASCADE,
    CONSTRAINT fk_participacao_atividade
        FOREIGN KEY (atividade_id) REFERENCES atividade(id)
        ON DELETE CASCADE
);