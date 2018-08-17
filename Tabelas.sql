create table usuario(
	id bigserial not null,
	nome varchar(50) not null,
	primary key(id)
);
create table professor(
	usuario_fk bigint not null,
	codigo_funcionario varchar(10) not null,
	primary key(usuario_fk)
);
create table aluno(
	usuario_fk bigserial not null,
	matricula varchar(10) not null,
	primary key(usuario_fk)
);
create table categoria(
	id bigserial not null,
	nome varchar(50) not null,
	primary key(id)	
);
create table livro(
	id bigserial not null,
	nome varchar(50) not null,
	categoria_fk bigint not null,
	primary key(id)	
);
create table emprestimo(
	usuario_fk bigint not null,
	livro_fk bigint not null,
	primary key(usuario_fk,livro_fk)
);
create table recomendacao(
	professor_fk bigint not null,
	livro_fk bigint not null,
	primary key(professor_fk,livro_fk)
);

alter table professor add constraint ri_professor_usuario_fk foreign key(usuario_fk)
references usuario(id) on update cascade on delete cascade;
alter table aluno add constraint ri_aluno_usuario_fk foreign key(usuario_fk)
references usuario(id) on update cascade on delete cascade;
alter table livro add constraint ri_livro_categoria_fk foreign key(categoria_fk)
references categoria(id) on update cascade on delete cascade;
alter table emprestimo add constraint ri_emprestimo_usuario_fk foreign key(usuario_fk)
references usuario(id) on update cascade on delete cascade;
alter table emprestimo add constraint ri_emprestimo_livro_fk foreign key(livro_fk)
references livro(id) on update cascade on delete cascade;
alter table recomendacao add constraint ri_emprestimo_professor_fk foreign key(professor_fk) references professor(usuario_fk) on update cascade on delete cascade;
alter table recomendacao add constraint ri_emprestimo_livro_fk foreign key(livro_fk)
references livro(id) on update cascade on delete cascade;
