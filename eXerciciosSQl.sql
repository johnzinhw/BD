ALTER TABLE cliente ADD telefone  varchar (20);

INSERT INTO cliente (email, senha, telefone) VALUES ('johnzinhw', 'johnzinhwgostoso', '998123977');
INSERT INTO pessoa_fisica (cliente_fk, cpf) VALUES (1, '1361361661');

INSERT INTO cliente (email, senha, telefone) VALUES ('john', 'jozinhostoso', '34715042');
INSERT INTO pessoa_juridica (cliente_fk, cnpj) VALUES (2, '1361361661');

ALTER TABLE produto ALTER COLUMN ativo TYPE boolean;

UPDATE produto SET ativo=true;

UPDATE produto SET prazo_entrega=prazo_entrega+2 where preco > 10;  --adiciona dois dias ao campo de prazo de enrtega aos produto que tem preço maior que 10

DELETE FROM status;

ALTER TABLE pedido ALTER COLUMN data_hora SET default now();

UPDATE cliente ALTER COLUMN telefone TYPE ;




 


