-- Criação das tabelas base
CREATE TABLE usuarios (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL
);

CREATE TABLE livros (
    id SERIAL PRIMARY KEY,
    titulo VARCHAR(100),
    autor VARCHAR(100)
);

CREATE TABLE emprestimos (
    id SERIAL PRIMARY KEY,
    usuario_id INT,
    livro_id INT, 
    data_emprestimo DATE,
    FOREIGN KEY (usuario_id) REFERENCES usuarios(id),
    FOREIGN KEY (livro_id) REFERENCES livros(id)
);

-- Adição de restrições e ajustes de coluna
ALTER TABLE usuarios ADD CONSTRAINT email_unique UNIQUE(email);
ALTER TABLE livros ADD CONSTRAINT livro_unique UNIQUE(titulo, autor);
ALTER TABLE usuarios DROP COLUMN senha; -- Removendo a senha conforme a lógica de negócio
