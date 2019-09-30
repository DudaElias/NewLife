create table Perfil
(
   id int primary key not null,
   nome varchar(30) not null,
   senha varchar(50) not null,
   email varchar(50) not null,
   nivel int not null,
   restricoes varchar(20) not null,
   peso float not null,
   altura float not null,
   dieta ntext,
   evolucao float
)

create table Restricao
(
	codRestricao int primary key not null,
	tipo varchar(30) not null,
	alimentosProblema ntext
)


create table Alimento
(
	codAlimento int primary key not null,
	gluten int not null,
	lactose int not null
)


create table Dica
(
 codDica int primary key not null,
 nomeDica varchar(20) not null,
 descricao ntext not null,
 imagem varchar(100) not null
)


create table Receita
(
	codReceita int primary key not null,
	nomeReceita varchar(50) not null,
	restricoes varchar(20) not null,
	alimentos varchar(200) not null,
	descricao ntext
)


create table Dieta
(
	codDieta int primary key not null,
	codPerfil int not null,
	alimentos ntext,
	constraint fk_CodPerfil foreign key(codPerfil) references Perfil(id)
)