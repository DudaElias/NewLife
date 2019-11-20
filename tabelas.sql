create table Perfil
(
   id int primary key identity(1,1) not null,
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

select*from Perfil
select * from Perfil where nome='Dudao'
insert into Perfil values('Dudao', 'duda29','dudao@gmail.com', 1, 'Nenhuma', 64, 160, 'blablabla',0)
create table Restricao
(
	codRestricao int primary key not null,
	tipo varchar(30) not null,
	alimentosProblema ntext
)


create table Alimento
(
	id int primary key identity(1,1) not null,
	nome varchar(100) not null,
	carboidratos float not null,
	gorduras float not null,
	proteinas float not null,
	gluten int not null,
	transgenico int not null,
	laticinios int not null,
	fibras float not null,
	B int not null,
	C int not null,
	D int not null,
	sodio int not null,
	antioxidante int not null,
	omega3 int not null,
	magnesio int not null,
	zinco float not null,
	ferro float not null,
	potassio float not null,
	colesterol float
)


/*	FRUTAS	*/



insert into Alimento values('Figo',13,0.5,1.1,0,2,0,1.8,0,2,0,0,2,2,0,0,2,2, null)/*1*/

insert into Alimento values('Tâmara',70,2.5,2,0,1,0,10,0,2,0,0,2,0,2,0,2,2, null)/*2*/

insert into Alimento values('Uva',15,1,1,0,1,0,0.7,0,2,0,0,2,0,0,0,0,2, null)/*3*/

insert into Alimento values('Romã',17,0.5,0.6,0,1,0,3.2,0,2,0,0,2,0,0,0,0,2, null)/*4*/

insert into Alimento values('Laranja',9,0.5,0.8,0,1,0,1.4,0,2,0,0,2,0,2,0,0,2, null)/*5*/

insert into Alimento values('Limão',9.5,0.5,0.8,0,1,0,1,0,2,0,0,2,0,0,0,0,2, null)/*6*/

insert into Alimento values('Tangerina',13,0.3,0.8,0,0,0,0.9,0,2,0,0,2,0,0,0,0,2, null)/*7*/

insert into Alimento values('Caqui',25,0.7,0.7,0,0,0,6.5,0,0,0,0,0,0,0,0,0,2, null)/*1*/

insert into Alimento values('Macadâmia',14,1.4,0.7,0,0,0,8.5,0,2,0,0,0,0,2,0,2,2, null)/*1*/

insert into Alimento values('Lichia',14,0.4,0.9,0,1,0,0.3,0,2,0,0,0,0,0,0,0,2, null)/*1*/

insert into Alimento values('Maracujá',18,1.5,2.1,0,1,0,6,0,2,0,0,0,0,2,0,0,2, null)/*1*/

insert into Alimento values('Abacate',7,12,2,0,0,0,5,0,0,0,0,0,0,0,2,0,2, null)/*1*/

insert into Alimento values('Abacaxi',12.4,0.3,0.6,0,1,0,1.1,0,0,0,0,0,0,2,0,0,2, null)/*1*/

insert into Alimento values('Açaí',12.4,40,0.6,0,1,0,1.1,0,2,0,2,2,0,2,2,2,2, null)/*1*/

insert into Alimento values('Ameixa',11.4,0.3,0.7,0,1,0,1.4,0,0,0,0,0,0,0,0,0,2, null)/*1*/

insert into Alimento values('Cacau',14.5,0.7,3.5,0,1,0,4.4,0,2,0,0,2,0,2,0,0,2, null)/*1*/

insert into Alimento values('Caju',10,0.3,1,0,0,0,1.7,0,2,0,0,2,0,2,0,0,2, null)/*1*/

insert into Alimento values('Coco',5.5,0.05,3.7,0,0,0,0,0,2,0,0,2,0,0,0,0,2, null)/*1*/

insert into Alimento values('Damasco',17,0.1,0.8,0,0,0,2.8,0,0,0,0,0,0,2,0,0,2, null)/*1*/

insert into Alimento values('Framboesa',12,0.8,0.8,0,1,0,6.5,0,2,0,0,2,0,2,2,0,2, null)/*1*/

insert into Alimento values('Goiaba',15,1.6,1.1,0,2,0,8,0,2,0,0,2,0,2,0,0,2, null)/*1*/

insert into Alimento values('Jabuticaba',13,0.1,0.8,0,0,0,0.3,0,0,0,0,0,0,2,0,0,0, null)/*1*/

insert into Alimento values('Manga',15,0.25,0.7,0,1,0,2,0,2,0,0,0,0,0,0,0,2, null)/*1*/

insert into Alimento values('Maçã',15,0.2,0.25,0,2,0,1.9,0,2,0,0,2,0,0,0,0,2, null)/*1*/

insert into Alimento values('Mamão',11,0.05,0.75,0,2,0,1.5,0,2,0,0,2,0,0,2,0,2, null)/*1*/

insert into Alimento values('Melão',14,0.3,1.2,0,2,0,0.5,0,2,0,0,2,0,0,0,0,2, null)/*1*/

insert into Alimento values('Pêra',14.6,0.25,0.5,0,2,0,2.7,0,2,0,0,2,0,2,0,0,2, null)/*1*/

insert into Alimento values('Pitanga',10,0.3,0.9,0,0,0,2.2,0,0,0,0,0,0,0,0,0,0, null)/*1*/

insert into Alimento values('Kiwi',14.7,0.5,1.1,0,0,0,3,0,2,0,0,2,0,2,0,0,2, null)/*1*/

insert into Alimento values('Melancia',7.3,0.1,0.7,0,1,0,0.3,0,0,0,0,0,0,2,0,2,2, null)/*1*/

insert into Alimento values('Morango',6.7,0.3,0.9,0,2,0,1.7,0,2,0,0,2,0,2,0,2,2, null)/*1*/

insert into Alimento values('Banana',123.8,0.3,1.04,0,1,0,2.6,0,0,0,0,2,0,2,0,0,2, null)/*1*/


/*	HORTALIÇAS	*/


insert into Alimento values('Abóbora',13.8,0.3,0.7,0,0,0,2.9,0,1,0,0,0,0,2,2,0,2, null)/*1*/

insert into Alimento values('Almeirão',3.3,0,1.8,0,0,0,2.6,0,1,0,0,0,0,2,2,0,2, null)/*2*/

insert into Alimento values('Brócolis',4,0.4,3.6,0,1,0,0.7,0,2,0,0,2,0,2,2,0,2, null)/*3*/

insert into Alimento values('Chicória',4.7,0.3,1.7,0,0,0,4,0,2,0,0,2,0,2,2,0,2, null)/*4*/

insert into Alimento values('Escarola',5.6,9.5,1.5,0,0,0,1.7,0,2,0,0,2,0,2,2,0,2, null)/*5*/

insert into Alimento values('Jiló',4.5,0.2,1.9,0,0,0,2.5,0,2,0,0,2,0,0,0,0,2, null)/*6*/

insert into Alimento values('Nabo',18,0.3,1.2,0,0,0,4.9,0,2,0,0,2,0,1,1,0,2, null)/*7*/

insert into Alimento values('Repolho',7.4,0.2,1.4,0,0,0,2.1,0,2,0,0,2,0,1,1,1,2, null)/*1*/

insert into Alimento values('Vagem',7.9,0.3,1.9,0,0,0,3.2,0,2,0,0,0,0,2,0,2,2, null)/*1*/

insert into Alimento values('Acelga',4.1,0.1,1.9,0,0,0,2.1,0,2,0,0,2,0,2,0,0,2, null)/*1*/

insert into Alimento values('Aspargo',4.1,0.2,2.4,0,0,0,2.1,0,1,0,0,0,0,0,2,0,2, null)/*1*/

insert into Alimento values('Chuchu',4.5,0.5,0.6,0,0,0,2.8,0,1,0,0,0,0,0,0,0,2, null)/*1*/

insert into Alimento values('Espinafre',3.8,0.3,3,0,0,0,2.4,0,1,0,0,0,0,2,2,2,2, null)/*1*/

insert into Alimento values('Lentilha',19.5,0.4,9,0,0,0,7.9,0,0,0,0,0,0,2,2,0,2, null)/*1*/

insert into Alimento values('Palmito',3.8,0.3,3,0,0,0,2.4,0,1,0,0,0,0,2,2,2,2, null)/*1*/

insert into Alimento values('Rúcula',3.6,0.7,2.6,0,0,0,1.6,0,1,0,0,1,0,2,2,0,2, null)/*1*/

insert into Alimento values('Agrião',1.3,0.1,1.9,0,0,0,0.5,0,2,0,0,2,0,2,2,0,2, null)/*1*/

insert into Alimento values('Batata',20.1,0.1,1.9,0,0,0,0,2,0,0,0,0,0,2,0,0,2, null)/*1*/

insert into Alimento values('Couve',5.6,0.4,1.9,0,0,0,2,0,2,0,0,2,0,0,0,0,2, null)/*1*/

insert into Alimento values('Mandioca',38.1,0.3,1.4,0,0,0,1.8,0,2,0,0,2,0,2,0,0,2, null)/*1*/

insert into Alimento values('Pepino',3.6,0.1,0.7,0,0,0,0.5,0,1,0,0,0,0,0,0,0,2, null)/*1*/

insert into Alimento values('Salsa',6.3,0.8,3,0,0,0,3.3,0,2,0,0,2,0,2,2,2,2, null)/*1*/

insert into Alimento values('Alcachofra',11.9,0.3,2.9,0,0,0,8.6,0,1,0,0,0,0,2,0,0,2, null)/*1*/

insert into Alimento values('Berinjela',15,0.2,0.25,0,2,0,1.9,0,2,0,0,2,0,0,0,0,2, null)/*1*/

insert into Alimento values('Couve Flor',4.1,0.5,1.8,0,0,0,2.3,0,2,0,0,2,0,2,0,0,2, null)/*1*/

insert into Alimento values('Feijão',21.6,5.2,5.5,0,0,0,5.5,0,1,0,0,0,0,2,2,2,2, null)/*1*/

insert into Alimento values('Quiabo',4.5,0.2,1.9,0,0,0,2.5,0,2,0,0,0,0,2,0,2,2, null)/*1*/

insert into Alimento values('Salsão',1.2,0.1,0.3,0,0,0,1.2,0,1,0,0,0,0,0,0,0,2, null)/*1*/

insert into Alimento values('Alface',2.9,0.1,1.4,0,0,0,1.3,0,1,0,0,0,0,0,0,0,2, null)/*1*/

insert into Alimento values('Cebola',9.6,0.2,1.4,0,0,0,1.6,0,1,0,0,0,0,2,0,0,2, null)/*1*/

insert into Alimento values('Couve de Bruxelas',7.1,0.5,2.5,0,0,0,2.6,0,2,0,0,2,0,2,0,2,2, null)/*1*/

insert into Alimento values('Grão de Bico',27.4,2.6,8.9,0,0,0,7.6,0,1,0,0,0,0,2,2,0,2, null)/*1*/

insert into Alimento values('Milho verde',21,1.5,3.4,0,2,0,2.4,0,1,0,0,0,0,2,2,0,2, null)/*1*/

insert into Alimento values('Rabanete',3.4,0.1,0.7,0,0,0,1.6,0,2,0,0,0,0,0,0,0,2, null)/*1*/

insert into Alimento values('Alho Poró',14.2,0.3,1.5,0,0,0,1.8,0,2,0,0,0,0,2,0,2,2, null)/*1*/

insert into Alimento values('Beterraba',10,0.2,1.7,0,0,0,2,0,1,0,0,0,0,2,0,0,2, null)/*1*/

insert into Alimento values('Cenoura',9.6,0.2,0.9,0,0,0,2.8,0,1,0,0,0,0,0,0,0,2, null)/*1*/

insert into Alimento values('Ervilha',15.6,0.2,5.4,0,0,0,5.5,0,2,0,0,0,0,2,2,2,2, null)/*1*/

insert into Alimento values('Mostarda',5.3,4,4.4,0,0,0,3.3,0,1,0,0,0,0,2,2,2,2, null)/*1*/

insert into Alimento values('Tomate',4,0.1,0.9,0,0,0,0.7,0,2,0,0,2,0,0,0,0,2, null)/*1*/

insert into Alimento values('Batata doce',20.7,0.1,2,0,0,0,3.3,1,2,0,0,2,0,2,1,1,2, null)/*1*/

insert into Alimento values('Soja',9.9,9,16.6,0,2,0,6,1,1,0,0,0,0,2,2,2,2, null)/*1*/


/*CARNE BOVINA*/

insert into Alimento values('Bife de Filé',0,7.9,28.8,0,1,0,0,2,0,0,0,0,0,0,0,2,2, null)/*1*/

insert into Alimento values('Picanha',0,14.2,27,0,1,0,0,2,0,0,0,0,2,0,2,2,2, 92)/*1*/

insert into Alimento values('Filé Mignon',0,17.1,26.5,0,1,0,0,2,0,0,0,0,0,2,0,0,2, 97)/*1*/

insert into Alimento values('Costela',0,28.5,23,0,1,0,0,2,0,0,0,0,0,0,0,0,2, 85)/*1*/

insert into Alimento values('Maminha',0,7.7,34.3,0,1,0,0,2,0,0,0,0,0,2,2,2,2, 94)/*1*/

insert into Alimento values('Carne moída',0,17.9,25.6,0,1,0,0,2,0,0,0,0,0,2,2,2,2, 88)/*1*/

/*CARNE BOVINA*/

insert into Alimento values('Bife de Filé',0,7.9,28.8,0,1,0,0,2,0,0,0,0,0,0,0,2,2, null)/*this boy*/

insert into Alimento values('Picanha',0,14.2,27,0,1,0,0,2,0,0,0,0,2,0,2,2,2, 92)/*this boy*/

insert into Alimento values('Filé Mignon',0,17.1,26.5,0,1,0,0,2,0,0,0,0,0,2,0,0,2, 97)/*this boy*/

insert into Alimento values('Costela',0,28.5,23,0,1,0,0,2,0,0,0,0,0,0,0,0,2, 85)/*this boy*/

insert into Alimento values('Maminha',0,7.7,34.3,0,1,0,0,2,0,0,0,0,0,2,2,2,2, 94)/*this boy*/

insert into Alimento values('Carne moída',0,17.9,25.6,0,1,0,0,2,0,0,0,0,0,2,2,2,2, 88)/*this boy*/

/*	PEIXE	*/

insert into Alimento values('Tilápia',0,2.6,26.2,0,1,0,0,2,0,0,0,2,2,2,0,2,2, 57)/*1*/

insert into Alimento values('Salmão',0,12.3,22.1,0,1,0,0,2,0,0,0,2,2,2,0,0,2, 63)/*1*/

insert into Alimento values('Atum',0,6.3,29.9,0,1,0,0,2,0,0,0,2,2,2,0,2,2, 49)/*1*/

insert into Alimento values('Bacalhau',0,0.9,22.8,0,1,0,0,2,0,0,2,2,2,2,0,0,2, 55)/*1*/

insert into Alimento values('Pescada',0,6.3,22.5,0,1,0,0,2,0,0,2,2,2,2,0,2,2, 82)/*1*/

insert into Alimento values('Sardinha',0,11.4,24.6,0,1,0,0,2,0,0,2,2,2,2,2,2,2, 142)/*1*/

/*	AVES	*/

insert into Alimento values('Peito de Frango',0,7.8,29.8,0,1,0,0,2,0,0,0,0,2,2,0,2,2, 84)/*1*/

insert into Alimento values('Coxa de Frango',0,10.6,25.3,0,1,0,0,2,0,0,0,0,2,0,2,2,2, 83)/*1*/

insert into Alimento values('Sobrecoxa de Frango',0,14.8,22.6,0,1,0,0,2,0,0,0,0,2,0,0,0,2, 135)/*1*/

insert into Alimento values('Asa de Frango',0,19.5,26.9,0,1,0,0,2,0,0,0,0,2,0,0,2,2, 84)/*1*/

insert into Alimento values('Carne de Frango',0,7.7,34.3,0,1,0,0,2,0,0,0,0,0,2,2,2,2, 88)/*1*/

insert into Alimento values('Peito de Peru',0,17.9,25.6,0,1,0,0,2,0,0,0,0,0,2,2,2,2, 74)/*1*/

insert into Alimento values('Assado de Peru',0,7.8,28.8,0,1,0,0,2,0,0,0,0,0,0,0,2,2, null)/*this boy*/

/*	ANIMAIS		*/


select * from Alimento
/*Arroz*/


insert into Alimento values(0,0,0,0)/*1*/

insert into Alimento values(0,0,0,0)/*2*/

insert into Alimento values(0,0,0,0)/*3*/

insert into Alimento values(0,0,0,0)/*4*/

insert into Alimento values(0,0,0,0)/*5*/

insert into Alimento values(0,0,0,0)/*6*/


/*Aveia*/

insert into Alimento values(2,2,0,0)/*7*/


/*Biscoito*/

insert into Alimento values(2,1,1,1)/*8*/

insert into Alimento values(2,2,1,0)/*9*/

insert into Alimento values(2,2,1,0)/*10*/

insert into Alimento values(2,2,1,0)/*11*/

insert into Alimento values(2,2,1,0)/*12*/

insert into Alimento values(2,1,1,0)/*13*/

/*Bolo, mistura*/

insert into Alimento values(2,2,2,2)/*14*/

insert into Alimento values(2,2,2,2)/*15*/

insert into Alimento values(2,2,2,2)/*16*/

insert into Alimento values(2,2,2,2)/*17*/

insert into Alimento values(2,2,2,2)/*18*/


/*Canjica*/

insert into Alimento values(0,2,0,0)/*19*/

insert into Alimento values(0,2,2,0)/*20*/

/*Cereais*/

insert into Alimento values(2,2,0,0)/*21*/

insert into Alimento values(2,2,0,0)/*22*/

insert into Alimento values(2,2,0,0)/*23*/

insert into Alimento values(2,1,0,0)/*24*/

insert into Alimento values(2,1,2,0)/*25*/

insert into Alimento values(2,1,2,0)/*26*/

/*Creme em pó*/

insert into Alimento values(0,0,0,0)/*27*/

insert into Alimento values(0,2,0,0)/*28*/

/*Curau*/

insert into Alimento values(2,2,2,0)/*29*/

insert into Alimento values(2,2,0,0)/*30*/

/*Farinha*/

insert into Alimento values(0,0,0,0)/*31*/

insert into Alimento values(2,0,0,0)/*32*/

insert into Alimento values(0,2,0,0)/*33*/

insert into Alimento values(2,0,0,0)/*34*/

insert into Alimento values(2,0,0,0)/*35*/

insert into Alimento values(2,1,2,0)/*36*/


/*Massa*/

insert into Alimento values(2,1,0,2)/*37*/

insert into Alimento values(2,1,0,2)/*38*/

insert into Alimento values(2,1,0,2)/*39*/

insert into Alimento values(2,1,0,0)/*40*/

insert into Alimento values(2,1,0,2)/*41*/

/*Amido*/

insert into Alimento values(2,2,0,0)/*42*/

insert into Alimento values(0,2,0,0)/*43*/


/*Milho*/

insert into Alimento values(0,2,0,0)/*44*/

insert into Alimento values(0,2,0,0)/*45*/


/*Mingau*/

insert into Alimento values(2,2,0,0)/*46*/



/*Pamonha*/

insert into Alimento values(2,2,2,0)/*47*/

/*Pão*/
insert into Alimento values(2,2,2,0)/*48*/

insert into Alimento values(0,2,2,0)/*49*/

insert into Alimento values(2,1,2,0)/*50*/

insert into Alimento values(0,2,2,2)/*51*/

insert into Alimento values(2,1,2,0)/*52*/

insert into Alimento values(2,1,2,0)/*53*/

insert into Alimento values(2,1,2,0)/*54*/


/*Pastel*/

insert into Alimento values(2,0,1,2)/*55*/

insert into Alimento values(2,0,1,2)/*56*/

insert into Alimento values(2,1,1,2)/*57*/

insert into Alimento values(2,1,1,2)/*58*/

insert into Alimento values(2,0,1,2)/*59*/

insert into Alimento values(2,0,1,2)/*60*/


/*Pipoca*/

insert into Alimento values(0,2,0,0)/*61*/

/*Polenta*/

insert into Alimento values(1,2,2,0)/*62*/

/*Torrada*/

insert into Alimento values(2,0,1,2)/*63*/


/*Vegetais/hortaliças*/

insert into Alimento values(0,1,0,0)/*64*/

insert into Alimento values(0,0,0,0)/*65*/

insert into Alimento values(0,0,0,0)/*66*/

insert into Alimento values(0,0,0,0)/*67*/

insert into Alimento values(0,0,0,0)/*68*/

insert into Alimento values(0,0,0,0)/*69*/

insert into Alimento values(0,0,0,0)/*70*/

insert into Alimento values(0,0,0,0)/*71*/

insert into Alimento values(0,0,0,0)/*72*/

insert into Alimento values(0,0,0,0)/*73*/

insert into Alimento values(0,0,0,0)/*74*/

insert into Alimento values(0,0,0,0)/*75*/

insert into Alimento values(0,0,0,0)/*76*/

insert into Alimento values(0,0,0,0)/*77*/

insert into Alimento values(0,0,0,0)/*78*/

insert into Alimento values(0,0,0,0)/*79*/

insert into Alimento values(0,0,0,0)/*80*/

insert into Alimento values(0,0,0,0)/*81*/

insert into Alimento values(0,0,0,0)/*82*/

insert into Alimento values(0,0,0,0)/*83*/

insert into Alimento values(0,0,0,0)/*84*/

insert into Alimento values(0,0,0,0)/*85*/

insert into Alimento values(0,0,0,0)/*86*/

insert into Alimento values(0,0,0,0)/*87*/

insert into Alimento values(0,0,0,0)/*88*/

insert into Alimento values(0,0,0,0)/*89*/


/*Salgadinho*/


insert into Alimento values(2,2,0,0)/*90*/

/*Vegetais*/

insert into Alimento values(0,0,0,0)/*91*/

insert into Alimento values(0,0,0,0)/*92*/

insert into Alimento values(0,0,0,0)/*93*/

insert into Alimento values(0,0,0,0)/*94*/

insert into Alimento values(0,0,0,0)/*95*/

insert into Alimento values(0,0,0,0)/*96*/

insert into Alimento values(0,0,0,0)/*97*/

insert into Alimento values(0,0,0,0)/*98*/


/*Biscoito de polvilho*/

insert into Alimento values(0,1,0,1)/*99*/

/*Vegetais*/

insert into Alimento values(0,0,0,0)/*100*/

insert into Alimento values(0,0,0,0)/*101*/

insert into Alimento values(0,0,0,0)/*102*/

insert into Alimento values(0,0,0,0)/*103*/

insert into Alimento values(0,0,0,0)/*104*/

insert into Alimento values(0,0,0,0)/*105*/

insert into Alimento values(0,0,0,0)/*106*/

insert into Alimento values(0,0,0,0)/*107*/

insert into Alimento values(0,0,0,0)/*108*/

insert into Alimento values(0,0,0,0)/*109*/

insert into Alimento values(0,0,0,0)/*110*/

insert into Alimento values(0,0,0,0)/*111*/

insert into Alimento values(0,0,0,0)/*112*/

insert into Alimento values(0,0,0,0)/*113*/

insert into Alimento values(0,0,0,0)/*114*/

insert into Alimento values(0,0,0,0)/*115*/

insert into Alimento values(0,0,0,0)/*116*/

insert into Alimento values(0,0,0,0)/*117*/

insert into Alimento values(0,0,0,0)/*118*/

insert into Alimento values(0,0,0,0)/*119*/

insert into Alimento values(0,0,0,0)/*120*/

/*Farinha*/

insert into Alimento values(0,1,0,0)/*121*/

insert into Alimento values(0,1,0,0)/*122*/

insert into Alimento values(0,1,0,0)/*123*/

insert into Alimento values(0,1,0,0)/*124*/


/*Vegetais*/

insert into Alimento values(0,0,0,0)/*125*/

insert into Alimento values(0,0,0,0)/*126*/

insert into Alimento values(0,0,0,0)/*127*/

insert into Alimento values(0,0,0,0)/*128*/

insert into Alimento values(0,0,0,0)/*129*/

insert into Alimento values(0,0,0,0)/*130*/

insert into Alimento values(0,0,0,0)/*131*/

insert into Alimento values(0,0,0,0)/*132*/

insert into Alimento values(0,0,0,0)/*133*/

insert into Alimento values(0,0,0,0)/*134*/

insert into Alimento values(0,0,0,0)/*135 mostarda??*/

insert into Alimento values(0,0,0,0)/*136*/

insert into Alimento values(0,0,0,0)/*137*/

insert into Alimento values(0,0,0,0)/*138*/

insert into Alimento values(0,0,0,0)/*139*/

/*Pão de queijo*/


insert into Alimento values(0,1,0,0)/*140*/

insert into Alimento values(0,1,0,0)/*141*/

/*Vegetais*/

insert into Alimento values(0,0,0,0)/*142*/

insert into Alimento values(0,0,0,0)/*143*/

insert into Alimento values(0,0,0,0)/*144*/

insert into Alimento values(0,0,0,0)/*145*/

/*Polvilho*/

insert into Alimento values(0,1,0,0)/*146*/

/*Vegetais*/

insert into Alimento values(0,0,0,0)/*147*/

insert into Alimento values(0,0,0,0)/*148*/

insert into Alimento values(0,0,0,0)/*149*/

insert into Alimento values(0,0,0,0)/*150*/

insert into Alimento values(0,0,0,0)/*151*/

insert into Alimento values(0,0,0,0)/*152*/

insert into Alimento values(0,0,0,0)/*153*/

insert into Alimento values(0,0,0,0)/*154*/

insert into Alimento values(0,0,0,0)/*155*/

insert into Alimento values(0,0,0,0)/*156*/

insert into Alimento values(0,0,0,0)/*157*/

insert into Alimento values(0,0,0,0)/*158*/

insert into Alimento values(0,0,0,0)/*159*/

insert into Alimento values(0,0,0,0)/*160*/

insert into Alimento values(0,0,0,0)/*161*/

insert into Alimento values(0,0,0,0)/*162*/


/*Frutas*/

insert into Alimento values(0,0,0,0)/*163*/

insert into Alimento values(0,0,0,0)/*164*/

insert into Alimento values(0,0,0,0)/*165*/

insert into Alimento values(0,0,0,0)/*166*/

insert into Alimento values(0,0,0,0)/*167*/

insert into Alimento values(0,0,0,0)/*168*/

insert into Alimento values(0,0,0,0)/*169*/

insert into Alimento values(0,0,0,0)/*170*/

insert into Alimento values(0,0,0,0)/*171*/

insert into Alimento values(0,0,0,0)/*172*/

insert into Alimento values(0,0,0,0)/*173*/

insert into Alimento values(0,0,0,0)/*174*/

insert into Alimento values(0,0,0,0)/*175*/

insert into Alimento values(0,0,0,0)/*176*/

insert into Alimento values(0,0,0,0)/*177*/

insert into Alimento values(0,0,0,0)/*178*/

insert into Alimento values(0,0,0,0)/*179*/

insert into Alimento values(0,0,0,0)/*180*/

insert into Alimento values(0,0,0,0)/*181*/

insert into Alimento values(0,0,0,0)/*182*/

insert into Alimento values(0,0,0,0)/*183*/

insert into Alimento values(0,0,0,0)/*184*/

insert into Alimento values(0,0,0,0)/*185*/

insert into Alimento values(0,0,0,0)/*186*/

insert into Alimento values(0,0,0,0)/*187*/

insert into Alimento values(0,0,0,0)/*188*/

insert into Alimento values(0,0,0,0)/*189*/

insert into Alimento values(0,0,0,0)/*190*/

insert into Alimento values(0,0,0,0)/*191*/

insert into Alimento values(0,0,0,0)/*192*/

insert into Alimento values(0,0,0,0)/*193*/

insert into Alimento values(0,0,0,0)/*194*/

insert into Alimento values(0,0,0,0)/*195*/

insert into Alimento values(0,0,0,0)/*196*/

insert into Alimento values(0,0,0,0)/*197*/

insert into Alimento values(0,0,0,0)/*198*/

insert into Alimento values(0,0,0,0)/*199*/

insert into Alimento values(0,0,0,0)/*200*/

insert into Alimento values(0,0,0,0)/*201*/

insert into Alimento values(0,0,0,0)/*202*/

insert into Alimento values(0,0,0,0)/*203*/

insert into Alimento values(0,0,0,0)/*204*/

insert into Alimento values(0,0,0,0)/*205*/

insert into Alimento values(0,0,0,0)/*206*/

insert into Alimento values(0,0,0,0)/*207*/

insert into Alimento values(0,0,0,0)/*208*/

insert into Alimento values(0,0,0,0)/*209*/

insert into Alimento values(0,0,0,0)/*210*/

insert into Alimento values(0,0,0,0)/*211*/

insert into Alimento values(0,0,0,0)/*212*/

insert into Alimento values(0,0,0,0)/*213*/

insert into Alimento values(0,0,0,0)/*214*/

insert into Alimento values(0,0,0,0)/*215*/

insert into Alimento values(0,0,0,0)/*216*/

insert into Alimento values(0,0,0,0)/*217*/

insert into Alimento values(0,0,0,0)/*218*/

insert into Alimento values(0,0,0,0)/*219*/

insert into Alimento values(0,0,0,0)/*220*/

insert into Alimento values(0,0,0,0)/*221*/

insert into Alimento values(0,0,0,0)/*222*/

insert into Alimento values(0,0,0,0)/*223*/

insert into Alimento values(0,0,0,0)/*224*/

insert into Alimento values(0,0,0,0)/*225*/

insert into Alimento values(0,0,0,0)/*226*/

insert into Alimento values(0,0,0,0)/*227*/

insert into Alimento values(0,0,0,0)/*228*/

insert into Alimento values(0,0,0,0)/*229*/

insert into Alimento values(0,0,0,0)/*230*/

insert into Alimento values(0,0,0,0)/*231*/

insert into Alimento values(0,0,0,0)/*232*/

insert into Alimento values(0,0,0,0)/*233*/

insert into Alimento values(0,0,0,0)/*234*/

insert into Alimento values(0,0,0,0)/*235*/

insert into Alimento values(0,0,0,0)/*236*/

insert into Alimento values(0,0,0,0)/*237*/

insert into Alimento values(0,0,0,0)/*238*/

insert into Alimento values(0,0,0,0)/*239*/

insert into Alimento values(0,0,0,0)/*240*/

insert into Alimento values(0,0,0,0)/*241*/

insert into Alimento values(0,0,0,0)/*242*/

insert into Alimento values(0,0,0,0)/*243*/

insert into Alimento values(0,0,0,0)/*244*/

insert into Alimento values(0,0,0,0)/*245*/

insert into Alimento values(0,0,0,0)/*246*/

insert into Alimento values(0,0,0,0)/*247*/

insert into Alimento values(0,0,0,0)/*248*/

insert into Alimento values(0,0,0,0)/*249*/

insert into Alimento values(0,0,0,0)/*250*/

insert into Alimento values(0,0,0,0)/*251*/

insert into Alimento values(0,0,0,0)/*252*/

insert into Alimento values(0,0,0,0)/*253*/

insert into Alimento values(0,0,0,0)/*254*/

insert into Alimento values(0,0,0,0)/*255*/

insert into Alimento values(0,0,0,0)/*256*/

insert into Alimento values(0,0,0,0)/*257*/

insert into Alimento values(0,0,0,0)/*258*/



/*Azeites, oleos e manteiga*/


insert into Alimento values(0,1,0,0)/*259*/

insert into Alimento values(0,0,0,0)/*260*/

insert into Alimento values(0,0,2,0)/*261*/

insert into Alimento values(0,0,1,0)/*262*/

insert into Alimento values(0,0,2,0)/*263*/

insert into Alimento values(0,0,2,0)/*264*/

insert into Alimento values(0,0,2,0)/*265*/

insert into Alimento values(0,0,2,0)/*266*/

insert into Alimento values(0,0,0,0)/*267*/

insert into Alimento values(0,2,0,0)/*268*/

insert into Alimento values(0,2,0,0)/*269*/

insert into Alimento values(0,2,0,0)/*270*/

insert into Alimento values(0,1,0,0)/*271  ??*/

insert into Alimento values(0,2,0,0)/*272*/



/*Peixes*/

insert into Alimento values(0,0,0,0)/*273*/

insert into Alimento values(0,0,0,0)/*274*/

insert into Alimento values(0,0,0,0)/*275*/

insert into Alimento values(0,0,0,0)/*276*/

insert into Alimento values(0,0,0,0)/*277*/

insert into Alimento values(0,0,0,0)/*278*/

insert into Alimento values(0,0,0,0)/*279*/

insert into Alimento values(0,0,0,0)/*280*/

insert into Alimento values(2,0,0,0)/*281*/

insert into Alimento values(0,0,0,0)/*282*/

insert into Alimento values(0,0,0,0)/*283*/

insert into Alimento values(0,0,0,0)/*284*/

insert into Alimento values(0,0,0,0)/*285*/

insert into Alimento values(0,0,0,0)/*286*/

insert into Alimento values(0,0,0,0)/*287*/

insert into Alimento values(0,0,0,0)/*288*/

insert into Alimento values(0,0,0,0)/*289*/

insert into Alimento values(0,0,0,0)/*290*/

insert into Alimento values(0,0,0,0)/*291*/

insert into Alimento values(0,0,0,0)/*292*/

insert into Alimento values(0,0,0,0)/*293*/

insert into Alimento values(0,0,0,0)/*294*/

insert into Alimento values(0,0,0,0)/*295*/

insert into Alimento values(0,0,0,0)/*296*/

insert into Alimento values(0,0,0,0)/*297*/

insert into Alimento values(0,0,0,0)/*298*/




/*DUDA MORREU A PARTIR DESSE PONTO, REVISAR TUDO*/

insert into Alimento values(2,0,0,0)/*299*/

insert into Alimento values(0,0,0,0)/*300*/
 
insert into Alimento values(0,0,0,0)/*301*/

insert into Alimento values(0,0,0,0)/*302*/

insert into Alimento values(0,0,0,0)/*303*/

insert into Alimento values(0,0,0,0)/*304*/

insert into Alimento values(0,0,0,0)/*305*/

insert into Alimento values(2,0,0,0)/*306*/

insert into Alimento values(0,0,0,0)/*307*/

insert into Alimento values(0,0,0,0)/*308*/

insert into Alimento values(0,0,0,0)/*309*/

insert into Alimento values(0,0,0,0)/*310*/

insert into Alimento values(0,0,0,0)/*311*/

insert into Alimento values(0,0,0,0)/*312*/

insert into Alimento values(0,0,0,0)/*313*/

insert into Alimento values(0,0,0,0)/*314*/

insert into Alimento values(0,0,0,0)/*315*/

insert into Alimento values(0,0,0,0)/*316*/

insert into Alimento values(0,0,0,0)/*317*/

insert into Alimento values(0,0,0,0)/*318*/

insert into Alimento values(0,0,0,0)/*319*/

insert into Alimento values(0,0,0,0)/*320*/

insert into Alimento values(0,0,0,0)/*321*/

insert into Alimento values(0,0,0,0)/*322*/


/*Presunto*/
insert into Alimento values(2,2,0,0)/*323 presunto é transgênico?*/


/*Tablete de tempero*/
insert into Alimento values(0,2,0,0)/*324*/

insert into Alimento values(0,2,0,0)/*325*/


/*Carne  bovina*/ 
insert into Alimento values(0,0,0,0)/*326*/

insert into Alimento values(0,0,0,0)/*327*/

insert into Alimento values(0,0,0,0)/*328*/

insert into Alimento values(0,0,0,0)/*329*/

insert into Alimento values(0,0,0,0)/*330*/

insert into Alimento values(0,2,0,0)/*331*/

insert into Alimento values(0,2,0,0)/*332*/

insert into Alimento values(0,2,0,0)/*333*/

insert into Alimento values(0,0,0,0)/*334*/

insert into Alimento values(0,0,0,0)/*335*/

insert into Alimento values(0,0,0,0)/*336*/

insert into Alimento values(0,0,0,0)/*337*/

insert into Alimento values(0,0,0,0)/*338*/

insert into Alimento values(0,2,0,0)/*339*/

insert into Alimento values(0,2,0,0)/*340*/

insert into Alimento values(0,2,0,0)/*341*/

insert into Alimento values(0,0,0,0)/*342*/

insert into Alimento values(0,0,0,0)/*343*/

insert into Alimento values(0,0,0,0)/*344*/

insert into Alimento values(0,0,0,0)/*345*/

insert into Alimento values(0,0,0,0)/*346*/

insert into Alimento values(0,0,0,0)/*347*/

insert into Alimento values(0,0,0,0)/*348*/

insert into Alimento values(0,0,0,0)/*349*/

insert into Alimento values(0,0,0,0)/*350*/

insert into Alimento values(0,0,0,0)/*351*/

insert into Alimento values(0,0,0,0)/*352*/

insert into Alimento values(0,0,0,0)/*353*/

insert into Alimento values(0,0,0,0)/*354*/

insert into Alimento values(0,0,0,0)/*355*/

insert into Alimento values(0,0,0,0)/*356*/

insert into Alimento values(0,0,0,0)/*357*/

insert into Alimento values(0,0,0,0)/*358*/

insert into Alimento values(0,0,0,0)/*359*/

insert into Alimento values(0,0,0,0)/*360*/

insert into Alimento values(0,0,0,0)/*361*/

insert into Alimento values(0,0,0,0)/*362*/

insert into Alimento values(0,0,0,0)/*363*/

insert into Alimento values(0,0,0,0)/*364*/

insert into Alimento values(0,0,0,0)/*365*/

insert into Alimento values(0,0,0,0)/*366*/

insert into Alimento values(0,0,0,0)/*367*/

insert into Alimento values(0,0,0,0)/*368*/

insert into Alimento values(0,0,0,0)/*369*/

insert into Alimento values(0,0,0,0)/*370*/

insert into Alimento values(0,0,0,0)/*371*/

insert into Alimento values(0,0,0,0)/*372*/

insert into Alimento values(0,0,0,0)/*373*/

insert into Alimento values(0,0,0,0)/*374*/

insert into Alimento values(0,0,0,0)/*375*/

insert into Alimento values(0,0,0,0)/*376*/

insert into Alimento values(0,0,0,0)/*377*/

insert into Alimento values(0,0,0,0)/*378*/

insert into Alimento values(0,0,0,0)/*379*/

insert into Alimento values(0,0,0,0)/*380*/

insert into Alimento values(0,0,0,0)/*381*/

insert into Alimento values(0,0,0,0)/*382*/

insert into Alimento values(0,0,0,0)/*383*/

insert into Alimento values(0,0,0,0)/*384*/

insert into Alimento values(0,0,0,0)/*385*/

insert into Alimento values(0,0,0,0)/*386*/

insert into Alimento values(0,0,0,0)/*387*/

/*Carne fritura*/

insert into Alimento values(0,0,0,0)/*388*/

/*Empada*/

insert into Alimento values(0,0,0,0)/*389*/

insert into Alimento values(0,0,0,0)/*390*/


/*Frango*/



insert into Alimento values(0,0,0,0)/*391*/

insert into Alimento values(0,0,0,0)/*392*/

insert into Alimento values(0,0,0,0)/*393*/

insert into Alimento values(0,0,0,0)/*394*/

insert into Alimento values(0,0,0,0)/*395*/

insert into Alimento values(0,0,0,0)/*396*/

insert into Alimento values(0,0,0,0)/*397*/

insert into Alimento values(0,0,0,0)/*398*/

insert into Alimento values(0,0,0,0)/*399*/

insert into Alimento values(0,0,0,0)/*400*/

insert into Alimento values(0,0,0,0)/*401*/

insert into Alimento values(0,0,0,0)/*402*/

insert into Alimento values(0,0,0,0)/*403*/

insert into Alimento values(0,0,0,0)/*404*/

insert into Alimento values(0,0,0,0)/*405*/

insert into Alimento values(0,0,0,0)/*406*/

insert into Alimento values(0,0,0,0)/*407*/

insert into Alimento values(0,0,0,0)/*408*/

insert into Alimento values(0,0,0,0)/*409*/

insert into Alimento values(0,0,0,0)/*410*/

insert into Alimento values(0,0,0,0)/*411*/

insert into Alimento values(0,0,0,0)/*412*/

insert into Alimento values(0,0,0,0)/*413*/

insert into Alimento values(0,0,0,0)/*414*/



/*Hambruguer*/

insert into Alimento values(0,0,0,0)/*415*/

insert into Alimento values(0,0,0,0)/*416*/

insert into Alimento values(0,0,0,0)/*417*/


/*Linguiça*/

insert into Alimento values(0,0,0,0)/*418*/

insert into Alimento values(0,0,0,0)/*419*/

insert into Alimento values(0,0,0,0)/*420*/

insert into Alimento values(0,0,0,0)/*421*/

insert into Alimento values(0,0,0,0)/*422*/

insert into Alimento values(0,0,0,0)/*423*/

/*Embutidos*/

insert into Alimento values(2,2,0,0)/*424*/

/*Peru*/

insert into Alimento values(0,0,0,0)/*425*/

insert into Alimento values(0,0,0,0)/*426*/

/*Porco*/

insert into Alimento values(0,0,0,0)/*427*/

insert into Alimento values(0,0,0,0)/*428*/

insert into Alimento values(0,0,0,0)/*429*/

insert into Alimento values(0,0,0,0)/*430*/

insert into Alimento values(0,0,0,0)/*431*/

insert into Alimento values(0,0,0,0)/*432*/

insert into Alimento values(0,0,0,0)/*433*/

insert into Alimento values(0,0,0,0)/*434*/

insert into Alimento values(0,0,0,0)/*435*/

insert into Alimento values(0,0,0,0)/*436*/

insert into Alimento values(0,0,0,0)/*437*/

/*Presunto*/

insert into Alimento values(2,2,0,0)/*438*/

insert into Alimento values(2,2,0,0)/*439*/


/*Quibe*/
insert into Alimento values(2,0,0,0)/*440*/

insert into Alimento values(2,0,0,0)/*441*/

insert into Alimento values(2,0,0,0)/*442*/

/*Salame*/

insert into Alimento values(2,2,0,0)/*443*/

insert into Alimento values(2,2,0,0)/*444*/

/*Toucinho*/

insert into Alimento values(0,0,0,0)/*445*/

insert into Alimento values(0,0,0,0)/*446*/

/*Bebidas lácteas*/

insert into Alimento values(0,0,0,0)/*447*/

/*Creme de leite*/

insert into Alimento values(0,0,0,0)/*448*/

/*Iogurte*/

insert into Alimento values(0,0,2,0)/*449*/

insert into Alimento values(0,0,2,0)/*450*/

insert into Alimento values(0,0,2,0)/*451*/

insert into Alimento values(0,0,2,0)/*452*/

/*Leite condensado*/

insert into Alimento values(0,0,2,0)/*453*/

/*Leites*/

insert into Alimento values(0,0,2,0)/*454 cabra*/


insert into Alimento values(0,0,2,0)/*455 achocolatado*/

insert into Alimento values(0,0,0,0)/*456 desnatado em pó*/

insert into Alimento values(0,0,0,0)/*457 desnatado*/

insert into Alimento values(0,0,0,0)/*458 integral*/

insert into Alimento values(0,0,0,0)/*459 integral em pó*/

insert into Alimento values(0,0,0,0)/*460 fermentado*/


/*Queijo*/

insert into Alimento values(0,0,0,0)/*461*/

insert into Alimento values(0,0,0,0)/*462*/

insert into Alimento values(0,0,0,0)/*463*/

insert into Alimento values(0,0,0,0)/*464*/

insert into Alimento values(0,0,0,0)/*465*/

insert into Alimento values(0,0,0,0)/*466*/

insert into Alimento values(0,0,0,0)/*467*/


/*Doce*/

insert into Alimento values(0,0,0,0)/*468*/

/*Queijo*/

insert into Alimento values(0,0,0,0)/*469*/



/*Bebidas*/


insert into Alimento values(0,0,0,0)/*470*/

insert into Alimento values(0,0,0,0)/*471*/

insert into Alimento values(0,0,0,0)/*472*/

insert into Alimento values(0,0,0,0)/*473*/

insert into Alimento values(0,0,0,0)/*474*/

insert into Alimento values(0,0,0,0)/*475*/

insert into Alimento values(0,0,0,0)/*476*/

insert into Alimento values(0,0,0,0)/*477*/

insert into Alimento values(0,0,0,0)/*478*/

insert into Alimento values(0,0,0,0)/*479*/

insert into Alimento values(0,0,0,0)/*480*/

insert into Alimento values(0,0,0,0)/*481*/

insert into Alimento values(0,0,0,0)/*482*/

insert into Alimento values(0,0,0,0)/*483*/


/*Ovo*/

insert into Alimento values(0,0,0,0)/*484*/

insert into Alimento values(0,0,0,0)/*485*/

insert into Alimento values(0,0,0,0)/*486*/

insert into Alimento values(0,0,0,0)/*487*/

insert into Alimento values(0,0,0,0)/*488*/

insert into Alimento values(0,0,0,0)/*489*/

insert into Alimento values(0,0,0,0)/*490*/

/*N sei*/

insert into Alimento values(0,0,0,0)/*491*/

/*Açúcar*/

insert into Alimento values(0,0,0,0)/*492*/

insert into Alimento values(0,0,0,0)/*493*/

insert into Alimento values(0,0,0,0)/*494*/

insert into Alimento values(0,0,0,0)/*495*/

/*Chocolate*/

insert into Alimento values(0,0,0,0)/*496*/

insert into Alimento values(0,0,0,0)/*497*/


insert into Alimento values(0,0,0,0)/*498*/


/*Doces*/

insert into Alimento values(0,0,0,0)/*499*/

insert into Alimento values(0,0,0,0)/*500*/

insert into Alimento values(0,0,0,0)/*501*/

insert into Alimento values(0,0,0,0)/*502*/

insert into Alimento values(0,0,0,0)/*503*/

insert into Alimento values(0,0,0,0)/*504*/

insert into Alimento values(0,0,0,0)/*505*/

insert into Alimento values(0,0,0,0)/*506*/

insert into Alimento values(0,0,0,0)/*507*/

insert into Alimento values(0,0,0,0)/*508*/

insert into Alimento values(0,0,0,0)/*509*/

insert into Alimento values(0,0,0,0)/*510*/


/*Café*/

insert into Alimento values(0,0,0,0)/*511*/

insert into Alimento values(0,0,0,0)/*512*/


/*Fermento*/

insert into Alimento values(0,0,0,0)/*513*/

insert into Alimento values(0,0,0,0)/*514*/

/*Gelatina*/

insert into Alimento values(0,0,0,0)/*515*/

/*Coisas com sal*/

insert into Alimento values(0,0,0,0)/*516*/

insert into Alimento values(0,0,0,0)/*517*/

insert into Alimento values(0,0,0,0)/*518*/

insert into Alimento values(0,0,0,0)/*519*/

/*Azeitona*/

insert into Alimento values(0,0,0,0)/*520*/

insert into Alimento values(0,0,0,0)/*521*/

/*Chantilly*/

insert into Alimento values(0,0,0,0)/*522*/


/*Temperos*/
insert into Alimento values(0,0,0,0)/*523*/

insert into Alimento values(0,0,0,0)/*524*/

/*Pratos*/

insert into Alimento values(0,0,0,0)/*525*/

insert into Alimento values(0,0,0,0)/*526*/

insert into Alimento values(0,0,0,0)/*527*/

insert into Alimento values(0,0,0,0)/*528*/

insert into Alimento values(0,0,0,0)/*529*/

insert into Alimento values(0,0,0,0)/*530*/

insert into Alimento values(0,0,0,0)/*531*/

insert into Alimento values(0,0,0,0)/*532*/

insert into Alimento values(0,0,0,0)/*533*/

insert into Alimento values(0,0,0,0)/*534*/

insert into Alimento values(0,0,0,0)/*535*/

insert into Alimento values(0,0,0,0)/*536*/

insert into Alimento values(0,0,0,0)/*537*/

insert into Alimento values(0,0,0,0)/*538*/

insert into Alimento values(0,0,0,0)/*539*/

insert into Alimento values(0,0,0,0)/*540*/

insert into Alimento values(0,0,0,0)/*541*/

insert into Alimento values(0,0,0,0)/*542*/

insert into Alimento values(0,0,0,0)/*543*/

insert into Alimento values(0,0,0,0)/*544*/

insert into Alimento values(0,0,0,0)/*545*/

insert into Alimento values(0,0,0,0)/*546*/

insert into Alimento values(0,0,0,0)/*547*/

insert into Alimento values(0,0,0,0)/*548*/

insert into Alimento values(0,0,0,0)/*549*/

insert into Alimento values(0,0,0,0)/*550*/

insert into Alimento values(0,0,0,0)/*551*/

insert into Alimento values(0,0,0,0)/*552*/

insert into Alimento values(0,0,0,0)/*553*/

insert into Alimento values(0,0,0,0)/*554*/

insert into Alimento values(0,0,0,0)/*555*/

insert into Alimento values(0,0,0,0)/*556*/


/*Amendoim*/

insert into Alimento values(0,0,0,0)/*557*/

insert into Alimento values(0,0,0,0)/*558*/


/*Leguminosas*/

insert into Alimento values(0,0,0,0)/*559*/

insert into Alimento values(0,0,0,0)/*560*/

insert into Alimento values(0,0,0,0)/*561*/

insert into Alimento values(0,0,0,0)/*562*/

insert into Alimento values(0,0,0,0)/*563*/

insert into Alimento values(0,0,0,0)/*564*/

insert into Alimento values(0,0,0,0)/*565*/

insert into Alimento values(0,0,0,0)/*566*/

insert into Alimento values(0,0,0,0)/*567*/

insert into Alimento values(0,0,0,0)/*568*/

insert into Alimento values(0,0,0,0)/*569*/

insert into Alimento values(0,0,0,0)/*570*/

insert into Alimento values(0,0,0,0)/*571*/

insert into Alimento values(0,0,0,0)/*572*/

insert into Alimento values(0,0,0,0)/*573*/

insert into Alimento values(0,0,0,0)/*574*/

insert into Alimento values(0,0,0,0)/*575*/

insert into Alimento values(0,0,0,0)/*576*/

insert into Alimento values(0,0,0,0)/*577*/

insert into Alimento values(0,0,0,0)/*578*/


/*Derivados de amendoim*/

insert into Alimento values(0,0,0,0)/*579*/

insert into Alimento values(0,0,0,0)/*580*/

/*Soja*/

insert into Alimento values(0,0,0,0)/*581*/

insert into Alimento values(0,0,0,0)/*582*/

insert into Alimento values(0,0,0,0)/*583*/

insert into Alimento values(0,0,0,0)/*584*/


/*Tremoço*/

insert into Alimento values(0,0,0,0)/*585*/

insert into Alimento values(0,0,0,0)/*586*/


/*Amendoa*/

insert into Alimento values(0,0,0,0)/*587*/

insert into Alimento values(0,0,0,0)/*588*/

insert into Alimento values(0,0,0,0)/*589*/


/*Coco*/

insert into Alimento values(0,0,0,0)/*590*/

insert into Alimento values(0,0,0,0)/*591*/

/*Farinha*/

insert into Alimento values(0,0,0,0)/*592*/

insert into Alimento values(0,0,0,0)/*593*/

insert into Alimento values(0,0,0,0)/*594*/


/*Pinhão*/

insert into Alimento values(0,0,0,0)/*595*/

/*Pupunha*/

insert into Alimento values(0,0,0,0)/*596*/


/*Noz*/
insert into Alimento values(0,0,0,0)/*597*/



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
	periodo varchar(50) not null,
	medidas ntext not null,
	alimentos ntext not null,
	modoPreparo ntext not null
)
insert into Receita values(1, '','', '2, 2 csopa, 1cchá, 1 pitada', '', '')
insert into Receita values(1, 'Crepioca de Frango','Café da manhã', '2, 2 csopa, 1cchá, 1 pitada', 'Ovo, Goma de tapioca, Semente de chia, Sal', 'Bata todos os ingredientes com o garfo/fouet ou no mixer/liqui. Despeje na frigideira previamente untada (se não quiser untar, garanta que o anti-aderente esteja 100%). Mantenha o fogo baixo e a frigideira tampada. Quando ela estiver bem firme vire apenas para dourar o outro lado. Coloque o recheio, dobre e pronto!')
insert into Receita values(2, 'Bolinho de Granola','Café da manhã',  '2 xíc, 1/2 xíc, 1/4 xíc, 2, 2, 1, a gosto', 'Granola, Farinha de aveia, Óleo de coco, Bananas, Ovos, Fermento em pó, Canela em pó', 'Bater com o mixer ou liqui as bananas, ovos e óleo de coco. Reserve. Misture os demais ingredientes em uma tigela e incorpore a mistura líquida, misture até obter uma massa homogênea. Coloque em forminhas de silicone para muffin/cupcake. Leve ao forno pré aquecido em 180o graus até assarem (faça o teste do palito) ~30 minutos')
/*insert into Receita values(3, 'Bolo de cenoura de liquidificador', '370g, 4, 360ml, 360g, 390g, 18g, 1 pitada, , , 100g, 240g, 12g, 120ml', 'Cenoura, Ovo, Ólep de girassol, Açúcar refinado, Farinha de trigo, Fermento químico, Sal, Óleo, Farinha, Chocolate em pó, Açú1car refinado, manteiga, água', 'Preaquece o forno a 180C. Unte com óleo uma forma retangular de aproximadamente 30cm x 25cm, polvilhe com a farinha de trigo e bata a forma para remover bem o excesso. Em uma tigela grande misture a farinha, o fermento, o sal e reserve. Descasque as cenouras, corte em rodelas e coloque no liquidificador, adicione o óleo, o açúcar e os ovos e bata até obter um creme liso. Aos poucos comece adicionar os líquidos aos ingredientes secos, use um fouet para misturar os ingredientes até obter uma massa lisa e homogênea. Transfira a massa para a forma preparada e leve para assar por aproximadamente 30 minutos. Depois desse tempo, espete um palito no centro da massa. Se o palito sair limpo é hora de retirar do forno, se sair com um pouco de massa coloque o bolo de volta no forno até assar completamente. Corte o bolo ainda quente sem retirá-lo da forma. Junte todos os ingredientes em uma panela média e leve ao fogo médio mexendo sempre com uma espátula. Quando a mistura ferver, deixe cozinhar por aproximadamente 5 a 8 minutos sem parar de mexer. Desligue a calda e despeje imediatamente sobre o bolo.') nonononononono tem gluten*/
insert into Receita values(3, 'Smoothie de morango e jabuticaba', 'Café da manhã', '1/2 xíc(chá), 1/2 xíc(chá), 1/2 xíc(chá), 4 pedras', 'morango, jabuticaba, água, gelo', 'Bata todos os ingredientes no mixer ou liquidificador.')
insert into Receita values(4, 'Ovos mexidos com Cogumelos', 'Café da manhã', '2 csopa, 250g, 4, a gosto', 'manteiga, cogumelos paris, ovo, sal', 'Numa panela ou frigideira, derreta 1 colher de sopa de manteiga e cozinhe os cogumelos até ficarem macios e mais escuros. Reserve.Em uma frigideira antiaderente, derreta a outra colher de manteiga e adicione os ovos batidos.Mexa com uma colher e cozinhe até ficar mais firme, porém macio.Sirva os ovos e os cogumelos ainda quentes sobre torradas.')
insert into Receita values(5, 'Frango com Legumes', 'Almoço','1 xíc(chá), 1/2 xíc(chá), 1/2 xíc(chá), 1/2 xíc(chá),1/2 xíc(chá), 1/2 unidade,1 csopa, a gosto', 'frango desfiado, cenoura cozida e cortada, vagem cortada, pimentão em tiras, abobrinha cortada, cebola cortada, shoyu, pimenta do reino', 'Modo de Preparo Cozinhe a cenoura e a vagem e reserve.Refogue a cebola e o pimentão.Adicione o frango desfiado e os demais legumes e o shoyu e deixe refogar.Tempere à gosto com pimenta.')
insert into Receita values(6, 'Wrap de salmão', 'Lanche','2, A gosto, 100g, 100g', 'tortilha de milho, agrião, salmão defumado, queijo feta', 'Numa frigideira anti-aderente (sem gordura), doura as tortilhas de ambos os lados.Para cada um dos wraps, coloca no centro a quantidade de agrião que desejares. Acrescenta, de seguida, o salmão fumado (50 g por pessoa) e finaliza com queijo feta (50 g por pessoa).')
insert into Receita values(7, 'Chips de batata doce','Lanche', '1', 'batata doce', 'Forre uma forma com papel manteiga.Fatie a batata em rodelas finas. Coloque um fio de azeite. Pré-aqueça o forno durante 10 minutos. Coloque a forma no forno e deixe até que a batata pareça bem crocante.')
insert into Receita values(8, 'Bolinho de espinafre', 'Lanche','1/2 xíc, 1 xíc, 1/2 xíc, 1, 1/2 xíc, 1/2, a gosto', 'ricota, espinafre refogado, brócolis refogado e picado em pedaços pequenos, ovo, farinha de aveia, cebola picada, sal e pimenta', 'Apos refogar o espinafre e o brócolis deixe escorrer para retirar o excesso de água, pique-os bem picadinho e escorra mais um pouco, dessa vez pressionando com a colher.Misture no bowl a ricota esfarelada (ou tofu), os verdes, tempere bem e prove, acerte o sal etc, adicione o ovo e a aveia, misture tudo com a mão.Faça bolinhas e leve para assar em fogo alto até dourar (cerca de 15 minutos).')
insert into Receita values(9, 'Mingau de Whey', 'Lanche','1 csopa, 50ml,1 csopa, 1 cchá, 1 csopa, 1, a gosto', 'aveia em flocos, água, whey hidrolisado, cacau em pó, óleo de coco, banana picada, canela', 'Misture a aveia em flocos com a água quente e deixe por 5 minutos. Adicione os outros ingredientes.')


create table Dieta
(
	codDieta int primary key not null,
	codPerfil int not null,
	alimentos ntext,
	constraint fk_CodPerfil foreign key(codPerfil) references Perfil(id)
)


create table Questao
(
	codQuestao int primary key not null,
	codQuiz int not null,
	pergunta ntext not null,
	tipo varchar(30) not null,
	respostas ntext
)	


/*Quiz base*/
insert into Questao values(1,1,'Quanto come fora de casa?','Alternativa1','Raramente , 1x por semana , 2/3x por semana , Quase sempre')
insert into Questao values(2,1,'Faz atividade física?','Alternativa1','Raramente , 1x por semana , 2/3x por semana , +5 por semana')
insert into Questao values(3,1,'Possui diabetes?','Alternativa1','Sim(Tipo 1) , Sim(Tipo 2) , Não(Pré-diabético) , Não')
insert into Questao values(4,1,'Possui hipertensão?','Alternativa1','Sim(Preocupante) , Sim , Não(Pressão baixa) , Não(Normal)')
insert into Questao values(5,1,'Problemas de estresse e/ou ansiedade?','Alternativa1','Sim(Diariamente) , Sim(Muitas vezes) , Sim(Algumas vezes) , Raramente')
insert into Questao values(6,1,'Quanto dorme por noite?','Alternativa1',' Menos que 4h , Entre 4 e 5h  , Entre 6 e 8h , 8h ou +')
insert into Questao values(7,1,'Quanto de água bebe por dia?','Alternativa1','-1L , 1/2L , 3/5L , +5L')

insert into Questao values(8,1,'Qual sua altura? (em cm)','Dissertativa', null)
insert into Questao values(9,1,'Qual o seu peso?(em Kg)','Dissertativa', null)
insert into Questao values(10,1,'Qual sua idade?','Dissertativa', null)
insert into Questao values(11,1,'Se fez um exame, qual seu indice glicêmico no mesmo?','Dissertativa', null)
insert into Questao values(12,1,'Restrições alimentares:','Alternativa2', 'Ovo, Frutos do Mar, Laticínios, Amendoim, Glúten, Soja')
insert into Questao values(13,1,'Gênero: ','Escolha', 'Feminino, Masculino');
