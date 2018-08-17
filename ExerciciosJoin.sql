--01)
select categoria.nome
from categoria
join livro on livro.categoria_fk = categoria.id
order by categoria.nome DESC

--02) O nome de todos os livros e suas respectivas categorias, ordenado por nome da categoria e nome dos livros (sempre em ordem ascendente).
select livro.nome, categoria.nome
from livro
join categoria on livro.categoria_fk = categoria.id
order by categoria.nome, livro.nome asc


--03) Nome e Matrícula de todos os alunos.
select usuario.nome, aluno.matricula
from aluno
join usuario on aluno.usuario_fk = usuario.id


--04) Nome do Professor, Do Livro e da Categoria de todas as recomendações feitas.
select livro.nome, categoria.nome, usuario.nome
from usuario
join professor on professor.usuario_fk= usuario.id
join recomendacao on recomendacao.professor_fk = professor.usuario_fk
join livro on recomendacao.livro_fk = livro.id
join categoria on livro.categoria_fk = categoria.id

--05) Nome dos Livros que nunca foram recomendados.
select *
from livro where id not in
(select livro.id
from livro
join recomendacao on livro.id=recomendacao.livro_fk)

--06)
select id, nome, count(*) quantidade
from usuario
join emprestimo on usuario.id = emprestimo.usuario_fk
group by id,nome order by nome

--07)
select categoria.nome
from categoria
join livro on livro.categoria_fk = categoria.id
join emprestimo on emprestimo.livro_fk = livro.id
group by categoria.nome
having count(*) >2



--08)
select categoria.nome, count (*) quantidade
from livro
join categoria on livro.categoria_fk = categoria.id
group by categoria.nome, categoria.id


--09)
select * from categoria where id not in
(select distinct categoria_fk
from recomendacao
join livro on recomendacao.livro_fk = livro.id)

--10)
select usuario.nome, count(*) quantidade
from usuario
join emprestimo on emprestimo.usuario_fk = usuario.id
join aluno on aluno.usuario_fk=usuario.id
group by usuario.nome,usuario.id






















