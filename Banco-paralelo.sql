CREATE DATABASE hafutech;

USE hafutech;

CREATE TABLE Regiao(
	id_regiao INT PRIMARY KEY AUTO_INCREMENT,
	regiao VARCHAR(45) NOT NULL,
	uf_estado CHAR(2) NOT NULL,
	cidade VARCHAR(45) NOT NULL,
	zona VARCHAR(45) NOT NULL,
	taxa_de_evasao VARCHAR(45) NOT NULL
);

CREATE TABLE Aluno(
	id_aluno INT PRIMARY KEY AUTO_INCREMENT,
	ano CHAR(1) NOT NULL,
	sexo VARCHAR(15) NOT NULL,
	raca VARCHAR(15) NOT NULL,
	fk_regiao INT NOT NULL,
	CONSTRAINT fk_id_regiao
	FOREIGN KEY (fk_regiao)
	REFERENCES Regiao(id_regiao)
);

CREATE TABLE Bens(
	id_bens INT PRIMARY KEY AUTO_INCREMENT,
	tipo VARCHAR(45) NOT NULL,
	quantidade INT NOT NULL,
	fk_aluno INT NOT NULL,
	CONSTRAINT fk_id_aluno
	FOREIGN KEY (fk_aluno)
	REFERENCES Aluno(id_aluno)
);

CREATE TABLE Usuario(
	id_usuario INT PRIMARY KEY AUTO_INCREMENT,
	email VARCHAR(45) NOT NULL,
	senha VARCHAR(45) NOT NULL,
	nome_completo VARCHAR(45) NOT NULL,
	tipo_usuario VARCHAR(45) NOT NULL,
	fk_regiao_usuario INT,
	CONSTRAINT fk_id_regiao_usuario
	FOREIGN KEY (fk_regiao_usuario)
	REFERENCES Regiao(id_regiao)
);

CREATE TABLE Comentario(
	id_comentario INT AUTO_INCREMENT,
	titulo VARCHAR(45),
	descricao VARCHAR(250),
	fk_usuario INT NOT NULL,
	CONSTRAINT fk_usuario_comentario
	FOREIGN KEY (fk_usuario)
	REFERENCES Usuario(id_usuario),
	CONSTRAINT pkComposta PRIMARY KEY(id_comentario,fk_usuario)
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

CREATE TABLE Escola(
    id INT PRIMARY KEY AUTO_INCREMENT,
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
