create table categoria (
	id bigserial not null,
	nome varchar(10) not null,
	primary key (id)
);

create table produto(
	id bigserial not null,
	nome varchar (10) not null,
	preco float not null,
	categoria_fk bigint,
	primary key (id)
);

alter table produto add constraint produto_categoria_fk
foreign key (categoria_fk) references categoria(id);

create table cliente(
	id bigserial not null,
	nome varchar (100) not null,
	genero varchar(1) not null,
	uf varchar (2) not null,
	primary key (id)
);

create table cliente_produto(
	cliente_fk bigint not null,
	produto_fk bigint not null,
	primary key (cliente_fk, produto_fk)
);

alter table cliente_produto add constraint cliente_produto_cliente_fk
foreign key (cliente_fk) references cliente(id);

alter table cliente_produto add constraint cliente_produto_produto_fk
foreign key (cliente_fk) references cliente(id);











