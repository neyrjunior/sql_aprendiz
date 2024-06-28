CREATE DATABASE db_escola;
USE db_escola;
CREATE TABLE tb_alunos(
	matricula BIGINT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    idade INT,
    turma INT NOT NULL,
    genero VARCHAR(255),
    PRIMARY KEY(matricula)
);

INSERT INTO tb_alunos(nome, idade, turma, genero)
VALUES("carla",15,901,"F"),
("marcos",16,902,"M"),
("joao",15,901,"M"),
("maria",16,901,"F"),
("luisa",15,902,"M"),
("yuri",15,901,"M"),
("camila",15,901,"F"),
("mario",15,901,"F");

ALTER TABLE tb_alunos ADD notas DECIMAL(3,1);

UPDATE tb_alunos SET notas = 10 WHERE matricula < 5;
UPDATE tb_alunos SET notas = 5 WHERE matricula > 4;

SELECT * FROM tb_alunos WHERE notas > 7;
SELECT * FROM tb_alunos WHERE notas < 7;

UPDATE tb_alunos SET notas = 7.5 WHERE matricula > 3 && matricula < 6;
SELECT * FROM tb_alunos;

UPDATE tb_alunos SET notas = 7.5 WHERE matricula = 7;
SELECT * FROM tb_alunos;



