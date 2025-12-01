INSERT INTO usuario (nome, tipo, matricula, email, telefone) VALUES
('Ana Souza', 'aluno', '20231234', 'ana@ufsp.edu.br', '11999990001'),
('Carlos Lima', 'professor', 'P99887', 'carlos@ufsp.edu.br', '11999990002'),
('Mariana Torres', 'funcionario', 'F55667', 'mariana@ufsp.edu.br', '11999990003');

INSERT INTO livro (titulo, ano, editora, categoria) VALUES
('Banco de Dados Moderno', 2020, 'TechPress', 'Tecnologia'),
('Estruturas de Dados em C', 2018, 'HardTech', 'Programação');

INSERT INTO autor (nome) VALUES
('João Pereira'),
('Clara Fernandes');

INSERT INTO autoria (id_livro, id_autor) VALUES
(1, 1),
(1, 2),
(2, 1);

INSERT INTO exemplar (id_livro, codigo_exemplar, status) VALUES
(1, 'EX001', 'disponivel'),
(1, 'EX002', 'emprestado'),
(2, 'EX003', 'disponivel');

INSERT INTO emprestimo (id_usuario, id_exemplar, data_retirada, data_devolucao_prevista)
VALUES (1, 2, '2025-02-01', '2025-02-15');

INSERT INTO reserva (id_usuario, id_livro, data_reserva)
VALUES (2, 1, '2025-02-10');
