-- quais os produtos ( id , nome) que o cliente de id=1 comprou?
select p.id, p.nome
from produto p, cliente_produto cp
where p.id=cp.produto_fk
and cp.cliente_fk=1


--mesmo resultado do anterior, porém usando IN
select id, nome from produto where id in
(select produto_fk from cliente_produto where cliente_fk =1)

-- mostra os produtos que o cliente 1 nao comprou
select id, nome from produto where id not in
(select produto_fk from cliente_produto where cliente_fk =1)

-- quais os produtos(id,nome) que os clientes do genero masculino nao compraram?
select id, nome from produto where id not in
(select produto_fk from cliente_produto, cliente where cliente_produto.cliente_fk=cliente.id 
and cliente.genero ='M')

--modo do professor \/
-- distinct so volta o resultado distintos
select id,nome from produto where id not in
(select distinct produto_fk from cliente_produto, cliente
where cliente_fk = id and genero='M')


--Nome de todas categorias, e a quantidade de produtos de cada uma
select categoria.nome, count(*) quantidade
from produto, categoria
where produto.categoria_fk = categoria.id
group by categoria.nome 

--nome em maisculo --upper ou lower    1º maiscula initcap
select upper(categoria.nome), count(*) quantidade
from produto, categoria
where produto.categoria_fk=categoria.id
group by categoria.nome 
having count(*) >2

--Nome da categoria, e a qtde de unidade de produtos vendidos
select categoria.nome, count (*) quantidade
from produto, categoria, cliente_produto
where cliente_produto.produto_fk = produto.id and produto.categoria_fk=categoria.id
group by categoria.nome

































