CREATE TABLE Alunos(
  id_aluno		  INTEGER      primary key  IDENTITY,
  nome_aluno	  VARCHAR(200)  NOT NULL,
  dt_nasc         DATE          NOT NULL,
  estado		  CHAR(2),    
  cidade		  VARCHAR(100),
  nome_rua	      VARCHAR(100),
  num_resid	      INTEGER
);


CREATE TABLE Telefones_Alunos (
    id_telefone   INTEGER   PRIMARY KEY   IDENTITY,
    id_aluno      INTEGER   NOT NULL,
    telefone      INTEGER   NOT NULL,
    FOREIGN KEY (id_aluno) REFERENCES Alunos(id_aluno)
);


CREATE TABLE Turmas (
  id_turma            INTEGER PRIMARY KEY IDENTITY,
  nome_turma          VARCHAR(100) NOT NULL,
  dt_inicio           DATE NOT NULL,
  dt_fim              DATE NOT NULL,
  duracao_anos        AS DATEDIFF(day, dt_inicio, dt_fim) / 365,
  duracao_semestre    AS DATEDIFF(day, dt_inicio, dt_fim) / 180
);


CREATE TABLE Alunos_Turmas (
    id_aluno INTEGER,
    id_turma INTEGER,
    PRIMARY KEY (id_aluno, id_turma),
    FOREIGN KEY (id_aluno) REFERENCES Alunos(id_aluno),
    FOREIGN KEY (id_turma) REFERENCES Turmas(id_turma)
);


CREATE TABLE Professores(
   id_professor      INTEGER  PRIMARY KEY IDENTITY,
   nome_professor    VARCHAR(200)  NOT NULL,
   salario           FLOAT
);


CREATE TABLE Telefone_Professores(
    id_telefone   INTEGER   PRIMARY KEY  IDENTITY,
    id_professor  INTEGER,
    numero        INTEGER  NOT NULL,
    FOREIGN KEY (id_professor) REFERENCES Professores(id_professor)
);


CREATE TABLE Especializacao_Professores(
    id_especializacao  INTEGER PRIMARY KEY IDENTITY,
    id_professor       INTEGER  NOT NULL,
    especializacao     VARCHAR(100) NOT NULL,
    FOREIGN KEY (id_professor) REFERENCES Professores(id_professor)
);


CREATE TABLE Disciplinas(
    id_disciplina     INTEGER PRIMARY KEY  IDENTITY,
	nome_disciplina   VARCHAR(100)  NOT NULL,
  	id_professor      INTEGER  NOT NULL,
  	carga_horaria     FLOAT,
    FOREIGN KEY (id_professor) REFERENCES Professores(id_professor)
);


create table Disciplinas_Professores(
	id_disciplina  INTEGER,
    id_professor   INTEGER,
    PRIMARY KEY (id_disciplina, id_professor),
    FOREIGN KEY (id_disciplina) REFERENCES Disciplinas(id_disciplina),
    FOREIGN KEY (id_professor) REFERENCES Professores(id_professor)
);


CREATE TABLE Notas(
   id_nota        INTEGER   PRIMARY KEY  IDENTITY,
   id_aluno       INTEGER   NOT NULL,
   id_disciplina  INTEGER  NOT NULL,
   nota_aluno     FLOAT     NOT NULL,
   FOREIGN KEY (id_aluno) REFERENCES Alunos(id_aluno),
   FOREIGN KEY (id_disciplina) REFERENCES Disciplinas(id_disciplina)
);

INSERT INTO Alunos VALUES ('Maria Souza', '2019-04-15', 'SP', 'Franca', 'Rua A', 123);
INSERT INTO Alunos VALUES ('João da Silva', '2020-07-20', 'SP', 'Franca', 'Rua B', 456);
INSERT INTO Alunos VALUES ('Pedro Amaral', '2021-09-10', 'SP', 'Franca', 'Rua C', 789);
INSERT INTO Alunos VALUES ('Ana Pereira', '2019-01-05', 'SP', 'Franca', 'Rua X', 101);
INSERT INTO Alunos VALUES ('Lucas Santos', '2020-03-12', 'SP', 'Franca', 'Rua Y', 202);
INSERT INTO Alunos VALUES ('Mariana Martins', '2021-05-25', 'SP', 'Franca', 'Rua Z', 303);
INSERT INTO Alunos VALUES ('Gabriel de Paula', '2019-06-30', 'SP', 'Franca', 'Rua P', 404);
INSERT INTO Alunos VALUES ('Laura Teixeira', '2020-09-18', 'SP', 'Franca', 'Rua Q', 505);
INSERT INTO Alunos VALUES ('Guilherme Santiago', '2021-11-22', 'SP', 'Franca', 'Rua R', 606);
INSERT INTO Alunos VALUES ('Sophia Alves', '2019-03-10', 'SP', 'Franca', 'Rua D', 707);
INSERT INTO Alunos VALUES ('Mateus Lopes', '2020-08-08', 'SP', 'Franca', 'Rua E', 808);
INSERT INTO Alunos VALUES ('Luiza Aparecida', '2021-10-05', 'SP', 'Franca', 'Rua F', 909);
INSERT INTO Alunos VALUES ('Enzo Matta', '2019-02-28', 'SP', 'Franca', 'Rua M', 111);
INSERT INTO Alunos VALUES ('Isabella Ribeiro', '2020-04-16', 'SP', 'Franca', 'Rua N', 222);
INSERT INTO Alunos VALUES ('Larissa Costa', '2021-06-20', 'SP', 'Franca', 'Rua O', 333);
INSERT INTO Alunos VALUES ('Matheus Costa', '2019-05-15', 'SP', 'Franca', 'Rua G', 444);
INSERT INTO Alunos VALUES ('Ana Clara Silveiro', '2020-10-12', 'SP', 'Franca', 'Rua H', 555);
INSERT INTO Alunos VALUES ('Leonardo Oliveira', '2021-12-28', 'SP', 'Franca', 'Rua I', 666);
INSERT INTO Alunos VALUES ('Maria Clara Mendes', '2019-07-07', 'SP', 'Franca', 'Rua J', 777);
INSERT INTO Alunos VALUES ('Gustavo Vaz', '2020-11-24', 'SP', 'Franca', 'Rua K', 888);
 
INSERT INTO Telefones_Alunos VALUES (1, 1122334455);
INSERT INTO Telefones_Alunos VALUES (2, 098765432);
INSERT INTO Telefones_Alunos VALUES (3, 098754334);
INSERT INTO Telefones_Alunos VALUES (4, 665424689);
INSERT INTO Telefones_Alunos VALUES (5, 097653345);
INSERT INTO Telefones_Alunos VALUES (6, 346790087);
INSERT INTO Telefones_Alunos VALUES (7, 976435809);
INSERT INTO Telefones_Alunos VALUES (8, 124567997);
INSERT INTO Telefones_Alunos VALUES (9, 22222222);
INSERT INTO Telefones_Alunos VALUES (10, 1001122334);
INSERT INTO Telefones_Alunos VALUES (11, 333333333);
INSERT INTO Telefones_Alunos VALUES (12, 542145876);
INSERT INTO Telefones_Alunos VALUES (13, 545454321);
INSERT INTO Telefones_Alunos VALUES (14, 090909065);
INSERT INTO Telefones_Alunos VALUES (15, 55555555);
INSERT INTO Telefones_Alunos VALUES (16, 77777777);
INSERT INTO Telefones_Alunos VALUES (17, 8888888);
INSERT INTO Telefones_Alunos VALUES (18, 9999999);
INSERT INTO Telefones_Alunos VALUES (19, 1001122334);
INSERT INTO Telefones_Alunos VALUES (20, 2001122334);
 
 
INSERT INTO Turmas VALUES ('Turma 1', '2024-02-02', '2026-12-12');
INSERT INTO Turmas VALUES ('Turma 2', '2024-02-02', '2026-12-12');
INSERT INTO Turmas VALUES ('Turma 3', '2024-02-02', '2026-12-12');
INSERT INTO Turmas VALUES ('Turma 4', '2024-02-02', '2026-12-12');
INSERT INTO Turmas VALUES ('Turma 5', '2024-02-02', '2026-12-12');
INSERT INTO Turmas VALUES ('Turma 6', '2024-02-02', '2026-12-12');
INSERT INTO Turmas VALUES ('Turma 7', '2024-02-02', '2026-12-12');
INSERT INTO Turmas VALUES ('Turma 8', '2024-02-02', '2026-12-12');
INSERT INTO Turmas VALUES ('Turma 9', '2024-02-02', '2026-12-12');
INSERT INTO Turmas VALUES ('Turma 10', '2024-02-02', '2026-12-12');
INSERT INTO Turmas VALUES ('Turma 11', '2024-02-02', '2026-12-12');
INSERT INTO Turmas VALUES ('Turma 12', '2024-02-02', '2026-12-12');
INSERT INTO Turmas VALUES ('Turma 13', '2024-02-02', '2026-12-12');
INSERT INTO Turmas VALUES ('Turma 14', '2024-02-02', '2026-12-12');
INSERT INTO Turmas VALUES ('Turma 15', '2024-02-02', '2026-12-12');
INSERT INTO Turmas VALUES ('Turma 16', '2024-02-02', '2026-12-12');
INSERT INTO Turmas VALUES ('Turma 17', '2024-02-02', '2026-12-12');
INSERT INTO Turmas VALUES ('Turma 18', '2024-02-02', '2026-12-12');
INSERT INTO Turmas VALUES ('Turma 19', '2024-02-02', '2026-12-12');
INSERT INTO Turmas VALUES ('Turma 20', '2024-02-02', '2026-12-12');


INSERT INTO Alunos_Turmas VALUES (1, 1);
INSERT INTO Alunos_Turmas VALUES (2, 1);
INSERT INTO Alunos_Turmas VALUES (3, 17);
INSERT INTO Alunos_Turmas VALUES (4, 3);
INSERT INTO Alunos_Turmas VALUES (5, 2);
INSERT INTO Alunos_Turmas VALUES (6, 2);
INSERT INTO Alunos_Turmas VALUES (7, 7);
INSERT INTO Alunos_Turmas VALUES (8, 8);
INSERT INTO Alunos_Turmas VALUES (9, 9);
INSERT INTO Alunos_Turmas VALUES (10, 9);
INSERT INTO Alunos_Turmas VALUES (11, 2);
INSERT INTO Alunos_Turmas VALUES (12, 11);
INSERT INTO Alunos_Turmas VALUES (13, 13);
INSERT INTO Alunos_Turmas VALUES (14, 14);
INSERT INTO Alunos_Turmas VALUES (15, 15);
INSERT INTO Alunos_Turmas VALUES (16, 16);
INSERT INTO Alunos_Turmas VALUES (17, 1);
INSERT INTO Alunos_Turmas VALUES (18, 18);
INSERT INTO Alunos_Turmas VALUES (19, 19);
INSERT INTO Alunos_Turmas VALUES (20, 20);


INSERT INTO Professores VALUES ('José da Silva', 4000.00);
INSERT INTO Professores VALUES ('Ana Oliveira', 4500.00);
INSERT INTO Professores VALUES ('Carlos Souza', 5000.00);
INSERT INTO Professores VALUES ('Mariana Santos', 4800.00);
INSERT INTO Professores VALUES ('Rafaela Lima', 4700.00);
INSERT INTO Professores VALUES ('Bruno Costa', 4300.00);
INSERT INTO Professores VALUES ('Luiza Rodrigues', 4600.00);
INSERT INTO Professores VALUES ('Fernando Almeida', 4900.00);
INSERT INTO Professores VALUES ('Patrícia Pereira', 5100.00);
INSERT INTO Professores VALUES ('Daniel Martins', 5200.00);
INSERT INTO Professores VALUES ('Isabela Oliveira', 5300.00);
INSERT INTO Professores VALUES ('Gustavo Barbosa', 5400.00);
INSERT INTO Professores VALUES ('Juliana Silva', 5500.00);
INSERT INTO Professores VALUES ('Lucas Mendes', 5600.00);
INSERT INTO Professores VALUES ('Vivian Gonçalves', 5700.00);
INSERT INTO Professores VALUES ('Thiago Santos', 5800.00);
INSERT INTO Professores VALUES ('Aline Vieira', 5900.00);
INSERT INTO Professores VALUES ('Eduardo Ferreira', 6000.00);
INSERT INTO Professores VALUES ('Larissa Nunes', 6100.00);
INSERT INTO Professores VALUES ('Paulo Costa', 6200.00);


INSERT INTO Telefone_Professores VALUES (1, 22334455);
INSERT INTO Telefone_Professores VALUES (2, 223345566);
INSERT INTO Telefone_Professores VALUES (3, 334455677);
INSERT INTO Telefone_Professores VALUES (4, 445566788);
INSERT INTO Telefone_Professores VALUES (5, 55677889);
INSERT INTO Telefone_Professores VALUES (6, 66889900);
INSERT INTO Telefone_Professores VALUES (7, 778890011);
INSERT INTO Telefone_Professores VALUES (8, 889901122);
INSERT INTO Telefone_Professores VALUES (9, 990011223);
INSERT INTO Telefone_Professores VALUES (10, 100112233);
INSERT INTO Telefone_Professores VALUES (11, 200112234);
INSERT INTO Telefone_Professores VALUES (12, 300122334);
INSERT INTO Telefone_Professores VALUES (13, 400112334);
INSERT INTO Telefone_Professores VALUES (14, 500122334);
INSERT INTO Telefone_Professores VALUES (15, 601122334);
INSERT INTO Telefone_Professores VALUES (16, 701122334);
INSERT INTO Telefone_Professores VALUES (17, 800122334);
INSERT INTO Telefone_Professores VALUES (18, 900122334);
INSERT INTO Telefone_Professores VALUES (19, 100122334);
INSERT INTO Telefone_Professores VALUES (20, 200112234);


INSERT INTO Especializacao_Professores VALUES (1, 'Matemática');
INSERT INTO Especializacao_Professores VALUES (2, 'Português');
INSERT INTO Especializacao_Professores VALUES (3, 'História');
INSERT INTO Especializacao_Professores VALUES (4, 'Geografia');
INSERT INTO Especializacao_Professores VALUES (5, 'Ciências');
INSERT INTO Especializacao_Professores VALUES (6, 'Inglês');
INSERT INTO Especializacao_Professores VALUES (7, 'Educação Física');
INSERT INTO Especializacao_Professores VALUES (8, 'Artes');
INSERT INTO Especializacao_Professores VALUES (9, 'Música');
INSERT INTO Especializacao_Professores VALUES (10, 'Literatura Infantil');
INSERT INTO Especializacao_Professores VALUES (11, 'Contação de História');
INSERT INTO Especializacao_Professores VALUES (12, 'Informática');
INSERT INTO Especializacao_Professores VALUES (13, 'Teatro');
INSERT INTO Especializacao_Professores VALUES (14, 'Dança');
INSERT INTO Especializacao_Professores VALUES (15, 'Educação Física');
INSERT INTO Especializacao_Professores VALUES (16, 'Espanhol');
INSERT INTO Especializacao_Professores VALUES (17, 'Teatro');
INSERT INTO Especializacao_Professores VALUES (18, 'Artes');
INSERT INTO Especializacao_Professores VALUES (19, 'Música');
INSERT INTO Especializacao_Professores VALUES (20, 'Português');


INSERT INTO Disciplinas VALUES ('Matemática', 1, NULL ); 
INSERT INTO Disciplinas VALUES ('Português', 2, 14.0);
INSERT INTO Disciplinas VALUES ('História', 3, 14.5);
INSERT INTO Disciplinas VALUES ('Geografia', 4, 8.0);
INSERT INTO Disciplinas VALUES ('Ciências', 5, 12.0);
INSERT INTO Disciplinas VALUES ('Inglês', 6, NULL);
INSERT INTO Disciplinas VALUES ('Educação Física', 7, 12.0);
INSERT INTO Disciplinas VALUES ('Artes', 8, 8.0);
INSERT INTO Disciplinas VALUES ('Música', 9, 10.0);
INSERT INTO Disciplinas VALUES ('Literatura Infantil', 10, NULL);
INSERT INTO Disciplinas VALUES ('Contação de Histórias', 11, NULL);
INSERT INTO Disciplinas VALUES ('Informática', 12, 9.0);
INSERT INTO Disciplinas VALUES ('Teatro', 13, 7.0);
INSERT INTO Disciplinas VALUES ('Dança', 14, NULL);
INSERT INTO Disciplinas VALUES ('Educação Física', 15, 8.5);
INSERT INTO Disciplinas VALUES ('Espanhol', 16, 10.5);
INSERT INTO Disciplinas VALUES ('Teatro', 17, 12.0);
INSERT INTO Disciplinas VALUES ('Artes', 18, NULL);
INSERT INTO Disciplinas VALUES ('Música', 19, 8.0);   
INSERT INTO Disciplinas VALUES ('Português', 20, NULL);


INSERT INTO Disciplinas_Professores VALUES (1, 1);
INSERT INTO Disciplinas_Professores VALUES (2, 2);
INSERT INTO Disciplinas_Professores VALUES (3, 3);
INSERT INTO Disciplinas_Professores VALUES (4, 4);
INSERT INTO Disciplinas_Professores VALUES (5, 5);
INSERT INTO Disciplinas_Professores VALUES (6, 6);
INSERT INTO Disciplinas_Professores VALUES (7, 7);
INSERT INTO Disciplinas_Professores VALUES (8, 8);
INSERT INTO Disciplinas_Professores VALUES (9, 9);
INSERT INTO Disciplinas_Professores VALUES (10, 10);
INSERT INTO Disciplinas_Professores VALUES (11, 11);
INSERT INTO Disciplinas_Professores VALUES (12, 12);
INSERT INTO Disciplinas_Professores VALUES (13, 13);
INSERT INTO Disciplinas_Professores VALUES (14, 14);
INSERT INTO Disciplinas_Professores VALUES (15, 15);
INSERT INTO Disciplinas_Professores VALUES (16, 16);
INSERT INTO Disciplinas_Professores VALUES (17, 17);
INSERT INTO Disciplinas_Professores VALUES (18, 18);
INSERT INTO Disciplinas_Professores VALUES (19, 19);
INSERT INTO Disciplinas_Professores VALUES (20, 20);

  
INSERT INTO Notas VALUES (1, 20, 7.5);
INSERT INTO Notas VALUES (2, 19, 8.0);
INSERT INTO Notas VALUES (3, 18, 6.5);
INSERT INTO Notas VALUES (4, 17, 9.0);
INSERT INTO Notas VALUES (5, 16, 7.0);
INSERT INTO Notas VALUES (6, 15, 8.5);
INSERT INTO Notas VALUES (7, 14, 6.0);
INSERT INTO Notas VALUES (8, 13, 9.5);
INSERT INTO Notas VALUES (9, 12, 7.5);
INSERT INTO Notas VALUES (10, 11, 8.0);
INSERT INTO Notas VALUES (11, 10, 6.5);
INSERT INTO Notas VALUES (12, 9, 9.0);
INSERT INTO Notas VALUES (13, 8, 7.0);
INSERT INTO Notas VALUES (14, 7, 8.5);
INSERT INTO Notas VALUES (15, 6, 6.0);
INSERT INTO Notas VALUES (16, 5, 9.5);
INSERT INTO Notas VALUES (17, 4, 7.5);
INSERT INTO Notas VALUES (18, 3, 8.0);
INSERT INTO Notas VALUES (19, 2, 6.5);
INSERT INTO Notas VALUES (20, 1, 9.0);

INSERT INTO Alunos (nome_aluno, dt_nasc, cidade) Values 
('Caroline Avelar', '2020-02-13', 'Franca')

SELECT * FROM Alunos

UPDATE Alunos SET cidade='São Joaquim da Barra' WHERE id_aluno=21;

DELETE FROM ALUNOS WHERE id_aluno=21;



select nome_turma, dt_inicio, dt_fim, duracao_anos from Turmas;

SELECT Nome_Professor FROM Professores WHERE Nome_Professor LIKE 'A%';

SELECT nome_disciplina, carga_horaria FROM Disciplinas WHERE carga_horaria IN (12.0, 14.0);

SELECT nome_aluno FROM Alunos WHERE nome_aluno LIKE 'L%';

SELECT nome_professor, salario FROM Professores WHERE salario > 5500 AND salario < 6200;

SELECT nome_aluno FROM Alunos ORDER BY nome_aluno DESC;

SELECT P.Nome_Professor, D.Nome_Disciplina FROM Professores P, Disciplinas D
WHERE P.id_professor = D.id_professor ORDER BY D.nome_disciplina DESC;


SELECT nome_aluno, cidade, num_resid FROM Alunos
WHERE num_resid BETWEEN 100 AND 250;


SELECT nome_aluno, nota_aluno FROM Alunos, Notas 
WHERE Alunos.id_aluno = Notas.id_nota AND nota_aluno BETWEEN 7.5 AND 9 ORDER BY nome_aluno ASC;


SELECT * FROM Alunos WHERE MONTH (dt_nasc) = 5 AND DAY(dt_nasc) >= 21
OR MONTH(dt_nasc) = 6 AND DAY(dt_nasc) <= 20;

