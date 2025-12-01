--P/Atualizar status de exemplar devolvido
UPDATE exemplar SET status = 'disponivel' WHERE id_exemplar = 2;

--p/Atualizar email de um usuário
UPDATE usuario SET email = 'ana.souza@ufsp.edu.br' WHERE id_usuario = 1;

--P/Alterar categoria de um livro
UPDATE livro SET categoria = 'Computação' WHERE id_livro = 1;
