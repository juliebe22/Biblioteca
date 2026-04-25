-- Inserção de dados iniciais
INSERT INTO usuarios (nome, email)
VALUES ('Júlia Beatriz Borges Cavalcante', 'juliabborgesc@gmail.com');

-- Limpeza de dados duplicados
DELETE FROM livros a
USING livros b 
WHERE a.id > b.id
AND a.titulo = b.titulo
AND a.autor = b.autor;
