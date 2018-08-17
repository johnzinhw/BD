--1-) Nome do produto e quantidade de unidades vendidas para clientes de MG
select produto.nome, count (*) quantidade
from produto, cliente, cliente_produto
where cliente_produto.produto_fk = produto.id 
and cliente_produto.cliente_fk = cliente.id
and cliente.uf='MG'
group by produto.nome


--2-) Categorias de produtos que nunca foram vendidas para clientes de MG
select * from categoria where id not in
(select distinct categoria.id
from cliente_produto, produto, cliente, categoria
where cliente_produto.produto_fk=produto.id and cliente_produto.cliente_fk = cliente.id
and categoria.id = produto.categoria_fk and cliente.uf='MG')


--3-) Clientes que nunca compraram produtos da categoria livros
select * from cliente where id not in
(select distinct cliente_fk
from cliente_produto, produto, categoria
where cliente_produto.produto_fk = produto.id
and categoria.id = produto.categoria_fk
and categoria.nome='Livros')


--4-) Produtos que nunca foram comprados
select * from produto where id not in 
(select distinct produto_fk from cliente_produto)




--5-) Categorias que não possuem produtos
select * from categoria where id not in
(select distinct categoria_fk from produto)



-- produtos que foram vendidos para outros estados menos MG
select *
from cliente_produto, produto, cliente, categoria
where cliente_produto.produto_fk = produto.id
and cliente_fk = cliente.id
and categoria.id = produto.categoria_fk
and cliente.uf != 'MG'




