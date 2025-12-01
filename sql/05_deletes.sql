--Remover uma reserva cancelada
DELETE FROM reserva WHERE status = 'cancelada';

--Remover autoria duplicada (caso existisse)
DELETE FROM autoria WHERE id_livro = 1 AND id_autor = 2;

--Excluir um exxemplar danificado
DELETE FROM exemplar WHERE status = 'danificado';
