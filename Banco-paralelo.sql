create database hafutech;
use hafutech;

create table usuario (
nome varchar(45),
email varchar(45),
senha int);

select * from escola;		

SELECT email, senha FROM usuario WHERE email = 'o@gmail.com' AND senha = '123456';

CREATE TABLE escola (
    id INT AUTO_INCREMENT PRIMARY KEY,
    ano INT NOT NULL,
    id_municipio INT NOT NULL,
    id_escola INT NOT NULL,
    area VARCHAR(100),
    localizacao VARCHAR(100),
    rede VARCHAR(100),
    inse_qtd_alunos INT,
    valor_inse DOUBLE,
    inse_classificacao2014 VARCHAR(50),
    inse_classificacao2015 VARCHAR(50)
);

truncate table escola;
