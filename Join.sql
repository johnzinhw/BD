select * from produto, tipo_produto
where produto.tipo_produto_fk= tipo_produto.id


--mesma coisa que o comando a cima, bate dos dois lados
select * from produto
join tipo_produto on produto.tipo_produto_fk = tipo_produto.id


-- o lado esquerdo tem prioridade
select * from produto
left join tipo_produto on produto.tipo_produto_fk = tipo_produto.id


--o lado direito tem prioridade
select * from produto
right join tipo_produto on produto.tipo_produto_fk = tipo_produto.id


--tras todos eles
select * from produto
full join tipo_produto on produto.tipo_produto_fk = tipo_produto.id

