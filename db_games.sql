CREATE DATABASE db_generation_games_online;
USE db_generation_games_online;
CREATE TABLE tb_classes(
id BIGINT AUTO_INCREMENT,
classe VARCHAR(255) NOT NULL,
rota VARCHAR(255),
PRIMARY KEY(id)
);
CREATE TABLE tb_personagem(
    id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    vida INT,
    dano INT,
    tipo BIGINT,
    genero VARCHAR(255),
    PRIMARY KEY(id),
    FOREIGN KEY (tipo) REFERENCES tb_classes(id)
);
INSERT INTO tb_classes(classe, rota)
VALUES("tank", "top"),
("lutador", "top"),
("mago", "mid"),
("assassino", "jungle"),
("atirador", "bot"),
("suporte", "bot");

INSERT INTO tb_personagem(nome, vida, dano, tipo, genero)
VALUES("lia", 200, 100, 5, "f"),
("roger", 5000, 50, 6, "m"),
("ira", 300, 80, 4, "f"),
("julius", 200, 100, 3, "m"),
("celio", 450, 70, 2, "m"),
("ju", 700, 40, 1, "f");

SELECT * FROM tb_personagem WHERE dano > 50;
SELECT * FROM tb_personagem WHERE vida > 200 AND vida < 700;
SELECT * FROM tb_personagem WHERE nome LIKE "%c%";

SELECT nome, vida, dano, genero, tb_classes.classe, tb_classes.rota
FROM tb_personagem INNER JOIN tb_classes
ON tb_personagem.tipo = tb_classes.id;

SELECT nome, vida, dano, genero, tb_classes.classe, tb_classes.rota
FROM tb_personagem INNER JOIN tb_classes
ON tb_personagem.tipo = 1 = tb_classes.id;



