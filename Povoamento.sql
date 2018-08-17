INSERT INTO usuario(nome) VALUES ('Julio');
INSERT INTO usuario(nome) VALUES ('Silvana');
INSERT INTO usuario(nome) VALUES ('Evandro');
INSERT INTO usuario(nome) VALUES ('Wesley');
INSERT INTO usuario(nome) VALUES ('Maria');
INSERT INTO usuario(nome) VALUES ('Denis');

INSERT INTO professor(usuario_fk, codigo_funcionario) VALUES (1,'01');
INSERT INTO professor(usuario_fk, codigo_funcionario) VALUES (2,'02');
INSERT INTO professor(usuario_fk, codigo_funcionario) VALUES (3,'03');

INSERT INTO aluno(usuario_fk, matricula) VALUES (4,'01');
INSERT INTO aluno(usuario_fk, matricula) VALUES (5,'02');
INSERT INTO aluno(usuario_fk, matricula) VALUES (6,'03');

INSERT INTO categoria(nome) VALUES ('Programação');
INSERT INTO categoria(nome) VALUES ('Banco de Dados');
INSERT INTO categoria(nome) VALUES ('Engenharia de Software');
INSERT INTO categoria(nome) VALUES ('Redes');

INSERT INTO livro(nome, categoria_fk) VALUES ('Java Como Programar', 1);
INSERT INTO livro(nome, categoria_fk) VALUES ('Padrões de Projeto', 1);
INSERT INTO livro(nome, categoria_fk) VALUES ('Biblia do C++', 1);
INSERT INTO livro(nome, categoria_fk) VALUES ('Guia Manga de Banco de Dados', 2);
INSERT INTO livro(nome, categoria_fk) VALUES ('Engenharia de Software', 3);
INSERT INTO livro(nome, categoria_fk) VALUES ('TPC/IP', 4);

INSERT INTO recomendacao(professor_fk, livro_fk) VALUES (1, 1);
INSERT INTO recomendacao(professor_fk, livro_fk) VALUES (1, 2);
INSERT INTO recomendacao(professor_fk, livro_fk) VALUES (2, 4);
INSERT INTO recomendacao(professor_fk, livro_fk) VALUES (3, 6);

INSERT INTO emprestimo(usuario_fk, livro_fk) VALUES (1, 1);
INSERT INTO emprestimo(usuario_fk, livro_fk) VALUES (1, 2);
INSERT INTO emprestimo(usuario_fk, livro_fk) VALUES (1, 3);
INSERT INTO emprestimo(usuario_fk, livro_fk) VALUES (2, 4);
INSERT INTO emprestimo(usuario_fk, livro_fk) VALUES (1, 5);
INSERT INTO emprestimo(usuario_fk, livro_fk) VALUES (4, 2);
INSERT INTO emprestimo(usuario_fk, livro_fk) VALUES (4, 3);
INSERT INTO emprestimo(usuario_fk, livro_fk) VALUES (4, 5);
INSERT INTO emprestimo(usuario_fk, livro_fk) VALUES (5, 1);
INSERT INTO emprestimo(usuario_fk, livro_fk) VALUES (5, 3);
INSERT INTO emprestimo(usuario_fk, livro_fk) VALUES (6, 6);
