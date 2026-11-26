CREATE TABLE estudante (
    id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    nome VARCHAR(150) NOT NULL,
    minibio TEXT,
    foto VARCHAR(255)
);

CREATE TABLE coordenador (
    id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    nome VARCHAR(150) NOT NULL,
    minibio TEXT,
    foto VARCHAR(255)
);

CREATE TABLE periodo_letivo (
    id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    ano SMALLINT NOT NULL,
    semestre SMALLINT NOT NULL CHECK (semestre IN (1, 2)),
    UNIQUE (ano, semestre)
);

CREATE TABLE atividade (
    id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    titulo VARCHAR(200) NOT NULL,
    tipo VARCHAR(50) NOT NULL,
    descricao TEXT,
    data_inicio DATE NOT NULL,
    data_fim DATE,
    situacao VARCHAR(50) NOT NULL,
    coordenador_id BIGINT NOT NULL,
    CONSTRAINT fk_atividade_coordenador
        FOREIGN KEY (coordenador_id)
        REFERENCES coordenador (id)
        ON UPDATE CASCADE
        ON DELETE RESTRICT
);

CREATE TABLE participacao (
    estudante_id BIGINT NOT NULL,
    atividade_id BIGINT NOT NULL,
    funcao VARCHAR(100),
    descricao_contribuicao TEXT,
    PRIMARY KEY (estudante_id, atividade_id),
    CONSTRAINT fk_participacao_estudante
        FOREIGN KEY (estudante_id)
        REFERENCES estudante (id)
        ON UPDATE CASCADE
        ON DELETE CASCADE,
    CONSTRAINT fk_participacao_atividade
        FOREIGN KEY (atividade_id)
        REFERENCES atividade (id)
        ON UPDATE CASCADE
        ON DELETE CASCADE
);

CREATE TABLE atividade_periodo (
    atividade_id BIGINT NOT NULL,
    periodo_id BIGINT NOT NULL,
    PRIMARY KEY (atividade_id, periodo_id),
    CONSTRAINT fk_atividade_periodo_atividade
        FOREIGN KEY (atividade_id)
        REFERENCES atividade (id)
        ON UPDATE CASCADE
        ON DELETE CASCADE,
    CONSTRAINT fk_atividade_periodo_periodo
        FOREIGN KEY (periodo_id)
        REFERENCES periodo_letivo (id)
        ON UPDATE CASCADE
        ON DELETE RESTRICT
);

CREATE TABLE conquista (
    id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    atividade_id BIGINT NOT NULL,
    titulo VARCHAR(200) NOT NULL,
    data DATE,
    descricao TEXT,
    CONSTRAINT fk_conquista_atividade
        FOREIGN KEY (atividade_id)
        REFERENCES atividade (id)
        ON UPDATE CASCADE
        ON DELETE CASCADE
);