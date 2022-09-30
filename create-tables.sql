CREATE TABLE aluno (
	id integer auto_increment primary key,
    nome varchar(100),
    matrícula varchar(20) unique,
    data_nascimento date,
    pontuação integer
);

CREATE TABLE atividade (
	id integer auto_increment primary key,
    aluno_id integer,
    nome varchar(100),
    disciplina varchar(100),
    nota decimal(10,2),
    observacao varchar(255),
    FOREIGN KEY (aluno_id) REFERENCES aluno(id)
);

INSERT INTO aluno VALUES
(default, 'Bruno', '2021A001', '1989-07-23', 0),
(default, 'Maria', '2020A002', '2000-04-15', 0),
(default, 'Jose', '2021A003', '1995-11-10', 0),
(default, 'Benedita', '2021A004', '1985-02-27', 0);