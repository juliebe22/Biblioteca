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
