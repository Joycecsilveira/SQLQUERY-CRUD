CREATE DATABASE crudHashtag;


CREATE TABLE alunos(
  ID_Aluno INT,
  Nome_Aluno VARCHAR(100),
  Email VARCHAR(100)
  );

 
 CREATE TABLE cursos(
   ID_Curso INT,
   Nome_Curso VARCHAR(100),
   Preco_Curso DECIMAL(10,2)  -- 1000,99
  );


 CREATE TABLE matriculas(
   ID_Matricula INT,
   ID_Aluno INT,
   ID_Curso INT,
   Data_Cadastro DATE
  );


  SELECT * FROM alunos;
  SELECT * FROM cursos;
  SELECT * FROM matriculas;
 
INSERT INTO alunos(ID_Aluno, Nome_Aluno, Email)
VALUES 
	(1, 'Joyce', 'joyce@gmail.com'         ),
	(2, 'Joana', 'joanasilva@outlook.com'  ),
	(3, 'Diego', 'dineves@gmail.com'       );

SELECT * FROM alunos;

INSERT INTO cursos(ID_Curso, Nome_Curso, Preco_Curso)
VALUES
   (2, 'SQL'     , 150),
   (3, 'Excel'   , 100);

SELECT * FROM cursos;

INSERT INTO matriculas(ID_Matricula, ID_Aluno, ID_Curso, Data_Cadastro)
VALUES 
   (1, 1, 1, '2023/02/08' ),
   (2, 3, 1, '2020/02/01' );

 SELECT * FROM matriculas;

UPDATE alunos 
SET Email = 'joyce2023@gmail.com'
WHERE ID_Aluno = 1;

DELETE FROM matriculas 
WHERE ID_Matricula = 2;

DROP TABLE matriculas;
DROP TABLE alunos;
DROP DATABASE  crudHashtag;