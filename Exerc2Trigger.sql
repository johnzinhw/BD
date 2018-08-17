create table categoria_produto(
	id bigint not null,
	nome varchar(100) not null,
	media_preco double precision not null,
	primary key(id)
);

create table produto(
	id bigint not null,
	nome varchar(100) not null,
	valor double precision not null,
	tipo_produto_fk bigint not null,
	primary key(id)
);



CREATE OR REPLACE FUNCTION atualizar_categoria() RETURNS trigger AS $$
	DECLARE
		media DOUBLE PRECISION;
    BEGIN
	SELECT AVG(valor) INTO media FROM produto
	WHERE tipo_produto_fk = NEW.tipo_produto_fk;

	UPDATE categoria_produto SET media_reco = media
	WHERE id = NEW.tipo_produto_fk;
	RETURN NEW;
   END;
$$ LANGUAGE plpgsql;


CREATE TRIGGER trigger_atualizar_categoria AFTER INSERT ON produto
FOR EACH ROW EXECUTE PROCEDURE atualizar_categoria();
