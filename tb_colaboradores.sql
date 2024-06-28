CREATE DATABASE db_empresa;
USE db_empresa;

CREATE TABLE tb_colaboradores(
	id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    idade INT,
    bairro VARCHAR(255),
    salario DECIMAL NOT NULL,
    PRIMARY KEY(id)
);
INSERT INTO tb_colaboradores(nome, idade, bairro,salario)
VALUES("julio", 20, "niteroi",1500.00);
INSERT INTO tb_colaboradores(nome, idade, bairro,salario)
VALUES("julia", 19, "sao goncalo",1700.00);
INSERT INTO tb_colaboradores(nome, idade, bairro,salario)
VALUES("wallace", 25, "madureira",2000.00);
INSERT INTO tb_colaboradores(nome, idade, bairro,salario)
VALUES("rodrigo", 22, "centro",2500.00);
INSERT INTO tb_colaboradores(nome, idade, bairro,salario)
VALUES("marilia", 39, "japeri", 250.00);

SELECT * FROM tb_colaboradores WHERE salario > 2000.00;

SELECT * FROM tb_colaboradores WHERE salario < 2000.00;

SET SQL_SAFE_UPDATES = 1;

	UPDATE tb_colaboradores SET idade = 29 WHERE id = 5;
    
    SET SQL_SAFE_UPDATES = 0;
    
	SELECT * FROM tb_colaboradores WHERE id = 5;
    SELECT * FROM tb_colaboradores;
