CREATE TABLE endereco (
nome VARCHAR(100) NOT NULL,
bairro VARCHAR(100) NOT NULL,
rua VARCHAR(100) NOT NULL,
numero INTEGER NOT NULL,
cidade VARCHAR(100) NOT NULL,
uf VARCHAR(100) NOT NULL,
cep INTEGER NOT NULL,
clienteid_fk BIGINT NOT NULL,
PRIMARY KEY (nome)
);

CREATE TABLE cliente (
id BIGSERIAL UNIQUE NOT NULL,
email VARCHAR(100) UNIQUE NOT NULL,
senha VARCHAR(50) NOT NULL,
PRIMARY KEY (id)
);

CREATE TABLE pessoa_fisica (
clienteid_fk BIGINT UNIQUE NOT NULL,
cpf VARCHAR(15) UNIQUE NOT NULL,
PRIMARY KEY (clienteid_fk)
);

CREATE TABLE pessoa_juridica (
clienteid_fk BIGINT UNIQUE NOT NULL,
cnpj VARCHAR(25) UNIQUE NOT NULL,
PRIMARY KEY (clienteid_fk)
);

CREATE TABLE pedido (
id BIGSERIAL UNIQUE NOT NULL,
data_hora TIMESTAMP NOT NULL,
PRIMARY KEY (id)
);

CREATE TABLE pedido_produto (
pedidoid_fk BIGINT NOT NULL,
produtoid_fk BIGINT NOT NULL,
preco FLOAT NOT NULL,
quantidade FLOAT NOT NULL,
Prazo_Entrega INTEGER NOT NULL,
PRIMARY KEY (pedidoid_fk,produtoid_fk)
);

CREATE TABLE status (
id BIGINT UNIQUE,
nome VARCHAR(100) UNIQUE NOT NULL,
PRIMARY KEY (id)
);

CREATE TABLE pedido_status ( 
pedidoid_fk BIGINT NOT NULL,
statusid_fk BIGINT NOT NULL,
Data_Hora DATE NOT NULL,
Observacao VARCHAR(100) NOT NULL,
PRIMARY KEY (pedidoid_fk, statusid_fk)
);

CREATE TABLE categoria (
Id BIGSERIAL NOT NULL,
Nome VARCHAR(100) NOT NULL,
PRIMARY KEY (Id)
);

CREATE TABLE produto (
Id BIGSERIAL NOT NULL UNIQUE,
categoriaid_fk BIGINT NOT NULL,
Nome VARCHAR(100) NOT NULL,
Preco FLOAT NOT NULL,
Ativo BOOLEAN NOT NULL,
Prazo INTEGER NOT NULL,
PRIMARY KEY (Id)
);


ALTER TABLE endereco ADD CONSTRAINT endereco_clienteid_fk
FOREIGN KEY (clienteid_fk) REFERENCES cliente (id)
ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE pessoa_fisica ADD CONSTRAINT pessoa_fisica_clienteid_fk
FOREIGN KEY (clienteid_fk) REFERENCES cliente (id)
ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE pessoa_juridica ADD CONSTRAINT pessoa_fisica_clienteid_fk
FOREIGN KEY (clienteid_fk) REFERENCES cliente (id)
ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE pedido_produto ADD CONSTRAINT pedido_produto_pedidoid_fk
FOREIGN KEY (pedidoid_fk) REFERENCES pedido (id)
ON UPDATE CASCADE ON DELETE SET NULL;

ALTER TABLE pedido_produto ADD CONSTRAINT pedido_produto_produtoid_fk
FOREIGN KEY (produtoid_fk) REFERENCES pedido (id)
ON UPDATE CASCADE ON DELETE SET NULL;

ALTER TABLE pedido_status ADD CONSTRAINT pedido_status_pedidoid_fk
FOREIGN KEY (pedidoid_fk) REFERENCES status (id)
ON UPDATE CASCADE ON DELETE SET NULL;

ALTER TABLE pedido_status ADD CONSTRAINT pedido_status_statusid_fk
FOREIGN KEY (statusid_fk) REFERENCES status (id)
ON UPDATE CASCADE ON DELETE SET NULL;

ALTER TABLE produto ADD CONSTRAINT produto_categoriaid_fk
FOREIGN KEY (categoriaid_fk) REFERENCES categoria (id)
ON UPDATE CASCADE ON DELETE SET NULL;
	










