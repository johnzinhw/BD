create table telefone(
	id bigint not null,
	nome varchar(100) not null,
	telefone varchar(20),
	primary key(id)
);



CREATE OR REPLACE FUNCTION ajustar() RETURNS trigger AS $$
	BEGIN
		UPDATE telefone SET TELEFONE='31' ||New.telefone WHERE id= NEW.id;
		RETURN NEW;
	END;
$$ LANGUAGE plpgsql;


CREATE TRIGGER TRIGGER_log  AFTER INSERT ON telefone
FOR EACH ROW EXECUTE PROCEDURE ajustar();
