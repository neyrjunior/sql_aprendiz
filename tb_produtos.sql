CREATE DATABASE db_comercio;
USE db_comercio;

CREATE TABLE tb_produtos(
	id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    tipo VARCHAR(255) NOT NULL,
    quantidade INT,
    preco DECIMAL(6,2) NOT NULL,
    PRIMARY KEY(id)
);

INSERT INTO tb_produtos(nome, tipo, quantidade, preco)
VALUES("tv", "eletrodomestico", 100, 1000.00),
("sofa", "movel", 70, 450.00),
("armario", "movel", 50, 400.00),
("geladeira", """eletrodomestico", 100, 1300.00),
("cama", "movel", 60, 700.00);

INSERT INTO tb_produtos(nome, tipo, quantidade, preco)
VALUES("celular", "eletronico", 500, 800.00),
("computador", "eletronico", 300, 1000.00),
("maquina de lavar", "eletrodomestico", 35, 499.00);

SELECT * FROM tb_produtos WHERE preco > 500.00;
SELECT * FROM tb_produtos WHERE preco > 500.00;
SELECT * FROM tb_produtos WHERE preco < 500.00;

UPDATE tb_produtos SET preco = 400.00 WHERE id = 3;
SELECT * FROM tb_produtos WHERE id = 3; 
