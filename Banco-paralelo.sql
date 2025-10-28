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

create table Comentario(
id_comentario int auto_increment,
titulo varchar(45),
descricao varchar(250),
fk_usuario int,
constraint pkComposta primary key (id_filtro, fk_usuario_filtro)
);

create table Log_historico_usuario(
id_log_historico int auto_increment,
fk_usuario_log int,
constraint pkComposta2 primary key(id_log_historico,fk_usuario_log),
data_hora DATETIME default current_timestamp,
descricao VARCHAR(100)
);
