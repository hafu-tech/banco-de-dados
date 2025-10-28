CREATE DATABASE hafutech;
use hafutech;

create table Regiao(
id_regiao int primary key auto_increment,
regiao VARCHAR(45) not null,
uf_estado CHAR(2) not null,
cidade VARCHAR(45) not null,
zona VARCHAR(45) not null,
taxa_de_evasao VARCHAR(45) not null
);


create table Aluno(
id_aluno int primary key auto_increment,
ano CHAR(1) not null,
sexo VARCHAR(15) not null,
raca VARCHAR(15) not null,
fk_regiao int not null,
constraint fk_id_regiao
foreign key (fk_regiao)
references Regiao(id_regiao)
);

create table Bens(
id_bens int primary key auto_increment,
tipo VARCHAR(45) not null,
quantidade int not null,
fk_aluno int not null,
constraint fk_id_aluno
foreign key (fk_aluno)
references Aluno(id_aluno)
);


create table Usuario(
id_usuario int primary key auto_increment,
email VARCHAR(45) not null,
senha VARCHAR(45) not null,
nome_completo VARCHAR(45) not null,
tipo_usuario VARCHAR(45) not null,
fk_regiao_usuario int,
constraint fk_id_regiao_usuario
foreign key (fk_regiao_usuario)
references Regiao(id_regiao)
);

CREATE TABLE Comentario(
id_comentario INT AUTO_INCREMENT,
titulo VARCHAR(45),
descricao VARCHAR(250),
fk_usuario INT NOT NULL,
CONSTRAINT fk_usuario_comentario
FOREIGN KEY (fk_usuario)
REFERENCES Usuario(id_usuario),
constraint pkComposta primary key(id_comentario,fk_usuario)
);

CREATE TABLE Log_historico_usuario(
id_log_historico INT PRIMARY KEY AUTO_INCREMENT,
fk_usuario_log INT NULL,
data_hora DATETIME DEFAULT CURRENT_TIMESTAMP,
descricao VARCHAR(100),
CONSTRAINT fk_usuario_log
FOREIGN KEY (fk_usuario_log)
REFERENCES Usuario(id_usuario)
);

CREATE TABLE Escola (
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