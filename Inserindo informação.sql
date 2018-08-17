

INSERT INTO categoria (nome) VALUES ('Filmes');

INSERT INTO produto (nome, preco, prazo_entrega, ativo, categoria_fk) VALUES ('Star Wars', 50.0, 3, true, 1);

INSERT INTO produto (nome, preco, prazo_entrega, ativo, categoria_fk) VALUES ('WoW', 50.0, 3,true, 1);

INSERT INTO produto (nome, preco, prazo_entrega, ativo, categoria_fk) VALUES ('Tibia', 5.0, 30,true, 1);

INSERT INTO produto (nome, preco, prazo_entrega, ativo, categoria_fk) VALUES ('EitaPorra', 40.0, 10,true, 1);

INSERT INTO produto (nome, preco, prazo_entrega, ativo, categoria_fk) VALUES ('Mentira Dela', 500.0, 15,false, 1);

SELECT * FROM produto;