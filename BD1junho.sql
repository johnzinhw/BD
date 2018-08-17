--DROP TABLE categoria;
CREATE TABLE categoria (
id BIGSERIAL NOT NULL,
nome VARCHAR(50) NOT NULL,
ativo BOOLEAN NOT NULL DEFAULT TRUE,
PRIMARY KEY (id)
);

INSERT INTO categoria(nome) VALUES ('Filmes/Series');
INSERT INTO categoria(nome,ativo) VALUES ('Musica',false);

UPDATE categoria SET nome='Música' WHERE id=2;

UPDATE categoria SET nome='Filmes/Series', ativo=false WHERE id=1;  --

UPDATE categoria SET ativo=true;  -- muda tudo pra true

DELETE FROM categoria WHERE id=1;  --deleta a linha 1

SELECT * from categoria --traz oq tem na tabela

SELECT nome from categoria -- traz so oq tem no campo nome

SELECT nome FROM categoria WHERE ativo=true