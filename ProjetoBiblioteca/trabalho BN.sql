-- TABELA: biblioteca

CREATE TABLE IF NOT EXISTS biblioteca (
    id_biblioteca SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    endereco VARCHAR(200),
    telefone VARCHAR(20)
);


-- TABELA: usuario

CREATE TABLE IF NOT EXISTS usuario (
    id_usuario SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    cpf VARCHAR(14) UNIQUE NOT NULL,
    email VARCHAR(100) UNIQUE,
    telefone VARCHAR(20),
    data_cadastro DATE DEFAULT CURRENT_DATE
);

-- TABELA: livro

CREATE TABLE IF NOT EXISTS livro (
    id_livro SERIAL PRIMARY KEY,
    titulo VARCHAR(150) NOT NULL,
    autor VARCHAR(100) NOT NULL,
    genero VARCHAR(50),
    numero_paginas INT CHECK (numero_paginas > 0),
    status VARCHAR(20) DEFAULT 'disponivel',

    id_biblioteca INT,

    CONSTRAINT fk_livro_biblioteca
        FOREIGN KEY (id_biblioteca)
        REFERENCES biblioteca(id_biblioteca)
        ON DELETE SET NULL
        ON UPDATE CASCADE
);


-- TABELA: emprestimo

CREATE TABLE IF NOT EXISTS emprestimo (
    id_emprestimo SERIAL PRIMARY KEY,

    id_usuario INT NOT NULL,
    id_livro INT NOT NULL,
    id_biblioteca INT NOT NULL,

    data_emprestimo DATE DEFAULT CURRENT_DATE,
    data_prevista_devolucao DATE NOT NULL,
    data_devolucao DATE,

    status_emprestimo VARCHAR(20) DEFAULT 'ativo',

    CONSTRAINT fk_emprestimo_usuario
        FOREIGN KEY (id_usuario)
        REFERENCES usuario(id_usuario)
        ON DELETE CASCADE,

    CONSTRAINT fk_emprestimo_livro
        FOREIGN KEY (id_livro)
        REFERENCES livro(id_livro)
        ON DELETE CASCADE,

    CONSTRAINT fk_emprestimo_biblioteca
        FOREIGN KEY (id_biblioteca)
        REFERENCES biblioteca(id_biblioteca)
        ON DELETE CASCADE,

    CONSTRAINT chk_datas
        CHECK (data_devolucao IS NULL OR data_devolucao >= data_emprestimo)
);