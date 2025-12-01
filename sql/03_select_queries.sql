--Listar todos os usuários ordenados por nome
SELECT * FROM usuario ORDER BY nome ASC;

--Buscar livros da categoria tecnologia
SELECT * FROM livro WHERE categoria = 'Tecnologia';

--Mostrar livros e seus autores 
SELECT l.titulo, a.nome AS autor
FROM livro l
JOIN autoria au ON l.id_livro = au.id_livro
JOIN autor a ON au.id_autor = a.id_autor;

--Exemplares disponíveis
SELECT * FROM exemplar WHERE status = 'disponivel';

--Empréstimos com nome do usuário
SELECT e.id_emprestimo, u.nome, ex.codigo_exemplar, e.data_retirada
FROM emprestimo e
JOIN usuario u ON e.id_usuario = u.id_usuario
JOIN exemplar ex ON e.id_exemplar = ex.id_exemplar
LIMIT 10;
