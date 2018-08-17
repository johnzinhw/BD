create table compra(
	id bigint not null,
	data timestamp not null,
	valor double precision not null,
	parcela int not null,
	primary key(id)
);
create table parcela(
	compra_fk bigint not null,
	numero bigint not null,
	valor double precision not null,
	pago boolean not null,
	primary key(compra_fk, numero)
);

CREATE OR REPLACE FUNCTION atulizar_parcelas(() RETURNS trigger AS $$
	DECLARE
			i INT;
			valor DOUBLE PRECISION;
			juros DOUBLE PRECISION;
	BEGIN
		valor = NEW.valor;
		juros = 0.01;
		IF (NEW.parcela > 1 ) then
		 valor = valor + (valor*juros);
		END IF;
		i=0;
		WHILE ( i < new.parcela) LOOP
			INSERT INTO parcela(compra_fk, numero, valor, pago)
			VALUES (NEW.id, (i+1) , valor, false);
			i =i+1;
			END LOOP;
			RETURN NEW;
	END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER trigger_atualizar_parcelas AFTER INSERT ON compra
FOR EACH ROW EXECUTE PROCEDURE atualizar_parcelas();