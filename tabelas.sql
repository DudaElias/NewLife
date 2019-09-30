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
	codAlimento int primary key identity(1,1) not null,
	gluten int not null,
	transgenico int not null,
	lactose int not null,
	ovo int not null,
)






insert into Alimento values(0,0,0,0)/*1*/
insert into Alimento values(0,0,0,0)/*2*/
insert into Alimento values(0,0,0,0)/*3*/
insert into Alimento values(0,0,0,0)/*4*/
insert into Alimento values(0,0,0,0)/*5*/
insert into Alimento values(0,0,0,0)/*6*/
insert into Alimento values(1,1,0,0)/*7*/


insert into Alimento values(0,1,0,0)/*8*/
insert into Alimento values(1,1,0,0)/*9*/
insert into Alimento values(1,1,0,0)/*10*/
insert into Alimento values(1,1,0,0)/*11*/
insert into Alimento values(1,1,0,0)/*12*/
insert into Alimento values(1,1,0,0)/*13*/
insert into Alimento values(1,1,0,0)/*14*/
insert into Alimento values(1,1,0,0)/*15*/
insert into Alimento values(1,1,0,0)/*16*/
insert into Alimento values(1,1,0,0)/*17*/
insert into Alimento values(1,1,0,0)/*18*/
insert into Alimento values(0,1,0,0)/*19*/
insert into Alimento values(1,1,0,0)/*20*/
insert into Alimento values(1,1,0,0)/*21*/
insert into Alimento values(1,1,0,0)/*22*/
insert into Alimento values(1,1,0,0)/*23*/
insert into Alimento values(1,1,0,0)/*24*/
insert into Alimento values(1,1,0,0)/*25*/
insert into Alimento values(1,1,0,0)/*26*/
insert into Alimento values(1,1,0,0)/*27*/
insert into Alimento values(1,1,0,0)/*28*/
insert into Alimento values(1,1,0,0)/*29*/
insert into Alimento values(1,1,0,0)/*30*/
insert into Alimento values(1,1,0,0)/*31*/
insert into Alimento values(1,1,0,0)/*32*/
insert into Alimento values(1,1,0,0)/*33*/
insert into Alimento values(1,1,0,0)/*34*/
insert into Alimento values(1,1,0,0)/*35*/
insert into Alimento values(1,1,0,0)/*36*/
insert into Alimento values(1,1,0,0)/*37*/
insert into Alimento values(1,1,0,0)/*38*/
insert into Alimento values(1,1,0,0)/*39*/
insert into Alimento values(1,1,0,0)/*40*/
insert into Alimento values(1,1,0,0)/*41*/
insert into Alimento values(1,1,0,0)/*42*/
insert into Alimento values(1,1,0,0)/*43*/
insert into Alimento values(1,1,0,0)/*44*/
insert into Alimento values(1,1,0,0)/*45*/
insert into Alimento values(1,1,0,0)/*46*/
insert into Alimento values(1,1,0,0)/*47*/
insert into Alimento values(1,1,0,0)/*48*/
insert into Alimento values(1,1,0,0)/*49*/
insert into Alimento values(1,1,0,0)/*50*/
insert into Alimento values(1,1,0,0)/*51*/
insert into Alimento values(1,1,0,0)/*52*/
insert into Alimento values(1,1,0,0)/*53*/
insert into Alimento values(1,1,0,0)/*54*/



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

create table Quiz
(
	codQuiz int primary key not null,
	pergunta ntext not null,
	alternativa varchar(40) not null
)

create table Possibilidade
(
	codPossibilidade int primary key not null,
	possibilidade varchar(50) not null
)	