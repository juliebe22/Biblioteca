-- Consulta para verificar usuários
SELECT * FROM usuarios; 

-- Consulta para verificar livros
SELECT * FROM livros;

-- Consulta principal com JOIN para a tela de empréstimos (O que vale nota!)
SELECT u.nome, l.titulo, e.data_emprestimo
FROM emprestimos e
INNER JOIN usuarios u ON e.usuario_id = u.id
INNER JOIN livros l ON e.livro_id = l.id
ORDER BY e.data_emprestimo DESC;

-- REQUISITO: LEFT JOIN (Mostra TODOS os usuários, mesmo os que nunca pegaram livros)
-- Os usuários sem livros aparecerão com "NULL" ou vazio na coluna do título.
SELECT u.nome AS usuario, l.titulo AS livro_emprestado
FROM usuarios u
LEFT JOIN emprestimos e ON u.id = e.usuario_id
LEFT JOIN livros l ON e.livro_id = l.id;
