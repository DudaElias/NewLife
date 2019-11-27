create table Perfil
(
   id int primary key identity(1,1) not null,
   nome varchar(30) not null,
   senha varchar(50) not null,
   email varchar(50) not null,
   nivel int not null,
   restricoes varchar(200) not null,
   peso float not null,
   altura float not null,
   genero char not null,
   idade int not null,
   dieta ntext,
   evolucao float
)

select*from Perfil
select * from Perfil where nome='Dudao'
insert into Perfil values('Dudao', 'duda29','dudao@gmail.com', 1, '', 64, 160,'F',15, 'blablabla',0)
create table Restricao
(
	codRestricao int primary key not null,
	tipo varchar(30) not null,
	alimentosProblema ntext
)

select * from Perfil
select*from Alimento



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

<<<<<<< HEAD
insert into Alimento values ('Ovo', 0.6,1.6,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,null) /*18 e null*/
insert into Alimento values ('Granola', 53.3,24.1,14.8,0,0,0,1,1,1,0,0,1,0,1,1,1,1,null)
/*ADICIONAR*/
insert into Alimento values ('Goma de tapioca', 54,0,14.8,3.2,0,0,0,0,0,0,0,0,0,0,0,0,0,null)
insert into Alimento values ('Semente de Chia', 44,32.8,17.2,0,0,0,27.6,0,0,0,1,0,0,0,0,0,0,0,null)
insert into Alimento values ('Cogumelo', 5.09,3.2,1.87,0,0,0,2.4,0,0,0,1,0,0,0,0,0,0,0,null)
insert into Alimento values ('Tortilha de milho', 44.6,2.9,5.7,0,1,0,6.3,0,0,0,0.063,0,0,0,0,0,0,0,null)
insert into Alimento values ('Queijo feta', 4.1,21.3,14.2,0,0,0,0,0,0,0,0.063,0,0,0,0,0,0,0,null)
insert into Alimento values ('Ricota', 3,13,11.3,0,0,0,0,0,0,0,0.063,0,0,0,0,0,0,0,null)
/*Precisa esses*/
insert into Alimento values ('Leite de amendoa', 0.6,1.6,0,0,0,0,0,0,0,0,0.063,0,0,0,0,0,0,0,null)
insert into Alimento values ('Stevia', 0.6,1.6,0,0,0,0,0,0,0,0,0.063,0,0,0,0,0,0,0,null)
insert into Alimento values ('Tofu', 0.6,1.6,0,0,0,0,0,0,0,0,0.063,0,0,0,0,0,0,0,null)

select * from Receita

=======
insert into Alimento values('manteiga',0,81.1,0.9,0,1,2,0,0,0,0,0,0,0,0,0,0,2, null)/*this boy*/

/*	FRUTAS	

LOLO
manteiga Ghee
amido de milho
molho de tomate
arroz de couve-flor
Semente de chia
tortilha de milho
SALIM
polpa de tomate
biomassa de banana verde
macarrão de grão de bico
tomate cereja
cogumelo
leite de amendoas
*/


insert into Alimento values ('Ovo', 1.1,10.6,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,null)
insert into Alimento values ('Granola', 53.3,24.1,14.8,0,0,0,1,1,1,0,0,1,0,1,1,1,1,0,null)
>>>>>>> 92495f5a3e3a54857f0f5b0520450f9b320c4e98
/*od dois de cima estão prontos, mas n adicionados*/
insert into Alimento values ('Farinha de Aveia', 66.2,7,17.3,1,0,0,15.4,0,0,0,0,0,0,2,2,2,2,null)
insert into Alimento values ('Abobrinha', 3.1,0.3,1.2,0,0,0,1,0,1,0,0,0,0,0,0,0,1,null)
insert into Alimento values ('Aveia em Flocos',66.3,6.9,16.9,1,0,0,10.6,0,0,0,0,0,0,2,2,1,2,null)
insert into Alimento values ('Whey hidrolisado', 0,0,88,0,0,2,1,0,0,0,0,0,0,0,0,0,0,null)
insert into Alimento values ('Cacau em pó', 57.9,13.7,19.6,0,0,0,33.2,0,0,0,0,0,0,2,2,2,2,null)




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



create table Dica
(
 codDica int primary key not null,
 nomeDica varchar(20) not null,
 descricao ntext not null,
 restricoes ntext not null,
 imagem varchar(100) not null
)

create table Notificacao
(
	codNot int primary key not null,
	nomeNot varchar(100) not null,
	descricao ntext not null,
	restricoes ntext not null,
	horario time not null,
	imagem varchar(150) not null
)


insert into Notificacao values(1, 'Beba água', 'Hidratação é essencial para um bom funcionamento corporal. Médicos indicam que deve-se ingerir no mínimo 2 litros de água ao dia. Torne isso um hábito!','1', '08:00:00', 'agua')
insert into Notificacao values(2, 'Dormir','Uma noite de sono além de revigorante, regula seu organismo e produz...','1','21:00:00','noite')
insert into Notificacao values(3,'Dispositivos Eletrônicos','Evite aparelhos eletrônicos a noite, além de tirarem seu sono podem ocasionar problemas visuais. Caso não seja possivel acostume-se a ativar a luz noturna do aparelho e/ou usar lentes especiais','1','20:00:00','oculos')
insert into Notificacao values(4,'Luz Solar','Se puder vá a um ambiente aberto e tome um banho de sol','1','11:00:00','sol')
insert into Notificacao values(5,'Relaxe!','Momentos de tranquilidade e lazer são importantes para a sua saúde mental e física, procure caminhar, meditar, ou algo relacionado a tranquilidade','1','9:00:00','natureza')
insert into Notificacao values(6,'Exercícios','Exercícios são bons para sua saúde além de manter ele em forma ajuda em casos de doenças como: diabetes, obesidadee problemas digestivos. Para um melhor funcionamento do cérebro exercicíos são excelentes.','1','7:00:00','peso')
insert into Notificacao values(7,'','','','','') // receitas, n sei se da tempo
insert into Notificacao values(8,'','','','','')



create table Extra
(
	codExtra int primary key identity(1,1) not null,
	nomeExtra varchar(150) not null,
	descricao ntext not null
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
select * from Perfil


insert into Receita values(1, 'Crepioca de Frango','Café da manhã', '2, 2 csopa, 1cchá, 1 pitada', 'Ovo, Goma de tapioca, Semente de chia, Sal', 'Bata todos os ingredientes com o garfo ou fouet ou no mixer/ Despeje na frigideira previamente untada (se não quiser untar, garanta que o anti-aderente esteja 100%)/ Mantenha o fogo baixo e a frigideira tampada/ Quando ela estiver bem firme vire apenas para dourar o outro lado/ Coloque o recheio, dobre e pronto!')
insert into Receita values(2, 'Bolinho de Granola','Café da manhã',  '2 xíc, 1/2 xíc, 1/4 xíc, 2, 2, 1, a gosto', 'Granola, Farinha de aveia, Óleo de coco, Bananas, Ovos, Fermento em pó, Canela em pó', 'Bater com o mixer ou liqui as bananas, ovos e óleo de coco/ Reserve/ Misture os demais ingredientes em uma tigela e incorpore a mistura líquida, misture até obter uma massa homogênea/ Coloque em forminhas de silicone para muffin/cupcake/ Leve ao forno pré aquecido em 180o graus até assarem (faça o teste do palito) ~30 minutos')
/*insert into Receita values(3, 'Bolo de cenoura de liquidificador', '370g, 4, 360ml, 360g, 390g, 18g, 1 pitada, , , 100g, 240g, 12g, 120ml', 'Cenoura, Ovo, Ólep de girassol, Açúcar refinado, Farinha de trigo, Fermento químico, Sal, Óleo, Farinha, Chocolate em pó, Açú1car refinado, manteiga, água', 'Preaquece o forno a 180C/ Unte com óleo uma forma retangular de aproximadamente 30cm x 25cm, polvilhe com a farinha de trigo e bata a forma para remover bem o excesso/ Em uma tigela grande misture a farinha, o fermento, o sal e reserve/ Descasque as cenouras, corte em rodelas e coloque no liquidificador, adicione o óleo, o açúcar e os ovos e bata até obter um creme liso/ Aos poucos comece adicionar os líquidos aos ingredientes secos, use um fouet para misturar os ingredientes até obter uma massa lisa e homogênea/ Transfira a massa para a forma preparada e leve para assar por aproximadamente 30 minutos/ Depois desse tempo, espete um palito no centro da massa/ Se o palito sair limpo é hora de retirar do forno, se sair com um pouco de massa coloque o bolo de volta no forno até assar completamente/ Corte o bolo ainda quente sem retirá-lo da forma/ Junte todos os ingredientes em uma panela média e leve ao fogo médio mexendo sempre com uma espátula/ Quando a mistura ferver, deixe cozinhar por aproximadamente 5 a 8 minutos sem parar de mexer/ Desligue a calda e despeje imediatamente sobre o bolo/') nonononononono tem gluten*/
insert into Receita values(3, 'Smoothie de morango e jabuticaba', 'Café da manhã', '1/2 xíc(chá), 1/2 xíc(chá), 1/2 xíc(chá), 4 pedras', 'morango, jabuticaba, água, gelo', 'Bata todos os ingredientes no mixer ou liquidificador/')
insert into Receita values(4, 'Ovos mexidos com Cogumelos', 'Café da manhã', '2 csopa, 250g, 4, a gosto', 'manteiga, cogumelos paris, ovo, sal', 'Numa panela ou frigideira, derreta 1 colher de sopa de manteiga e cozinhe os cogumelos até ficarem macios e mais escuros/ Reserve/Em uma frigideira antiaderente, derreta a outra colher de manteiga e adicione os ovos batidos/Mexa com uma colher e cozinhe até ficar mais firme, porém macio/Sirva os ovos e os cogumelos ainda quentes sobre torradas/')
insert into Receita values(5, 'Frango com Legumes', 'Almoço','1 xíc(chá), 1/2 xíc(chá), 1/2 xíc(chá), 1/2 xíc(chá),1/2 xíc(chá), 1/2 unidade,1 csopa, a gosto', 'frango desfiado, cenoura cozida e cortada, vagem cortada, pimentão em tiras, abobrinha cortada, cebola cortada, shoyu, pimenta do reino', 'Modo de Preparo Cozinhe a cenoura e a vagem e reserve/Refogue a cebola e o pimentão/Adicione o frango desfiado e os demais legumes e o shoyu e deixe refogar/Tempere à gosto com pimenta/')
insert into Receita values(6, 'Wrap de salmão', 'Lanche','2, A gosto, 100g, 100g', 'tortilha de milho, agrião, salmão defumado, queijo feta', 'Numa frigideira anti-aderente (sem gordura), doura as tortilhas de ambos os lados/Para cada um dos wraps, coloca no centro a quantidade de agrião que desejares/ Acrescenta, de seguida, o salmão fumado (50 g por pessoa) e finaliza com queijo feta (50 g por pessoa)/')
insert into Receita values(7, 'Chips de batata doce','Lanche', '1', 'batata doce', 'Forre uma forma com papel manteiga/Fatie a batata em rodelas finas/ Coloque um fio de azeite/ Pré-aqueça o forno durante 10 minutos/ Coloque a forma no forno e deixe até que a batata pareça bem crocante/')
insert into Receita values(8, 'Bolinho de espinafre', 'Lanche','1/2 xíc, 1 xíc, 1/2 xíc, 1, 1/2 xíc, 1/2, a gosto', 'ricota, espinafre refogado, brócolis refogado e picado em pedaços pequenos, ovo, farinha de aveia, cebola picada, sal e pimenta', 'Apos refogar o espinafre e o brócolis deixe escorrer para retirar o excesso de água, pique-os bem picadinho e escorra mais um pouco, dessa vez pressionando com a colher/Misture no bowl a ricota esfarelada (ou tofu), os verdes, tempere bem e prove, acerte o sal etc, adicione o ovo e a aveia, misture tudo com a mão/Faça bolinhas e leve para assar em fogo alto até dourar (cerca de 15 minutos)/')
insert into Receita values(9, 'Mingau de Whey', 'Lanche','1 csopa, 50ml,1 csopa, 1 cchá, 1 csopa, 1, a gosto', 'aveia em flocos, água, whey hidrolisado, cacau em pó, óleo de coco, banana picada, canela', 'Misture a aveia em flocos com a água quente e deixe por 5 minutos/ Adicione os outros ingredientes/')
insert into Receita values(10, 'Pudim de Chia', 'Café da manhã','1 1/2 csopa, 2/3 xícara,a gosto, a gosto, a gosto', 'semente de chia, leite vegetal de preferência, setvia, frutas secas, coco chips', 'Coloque as sementes de chia em um potinho de vidro, preencha com o leite vegetal e adoce a gosto/ Tampe o pote e deixe descansar na geladeira durante a noite/ No dia seguinte corte frutas frescas, coloque uns chips de coco e está pronto/')
insert into Receita values(11, 'Strogonoff sem Glúten', 'Almoço','1,2Kg, 1,1 csopa, 1L, 1 csopa, 300g, 1 1/2 xic, 1 csopa, 1 csopa, a gosto, 1 ccha', 'filé mignon cortado em tiras ou cubos, cebola picada, manteiga Ghee, leite de amêndoas, amido de milho, molho de tomate, champignon fatiado, shoyo, molho inglês, sal, noz-moscada', ' Refogue a cebola na manteiga/ Aos poucos coloque as carnes/ Se juntar água, retire e reserve/ Frite bem as carnes/ Misture o amido de milho no leite vegetal e acrescente todos os ingredientes na panela com a carne/ Deixe ferver e sirva/')
insert into Receita values(12, 'Quibe de Couve Flor', 'Almoço',' 3 xic, 600g, 1/2, a gosto, a gosto, a gosto, a gosto', 'arroz de couve-flor, carne moída, cebola picada, salsinha, sal, pimenta, azeite', 'Primeiro prepare o arroz de couve-flor: depois de lavar em água corrente e deixar de molho uns 20 minutos, corte os floretes e bata no liquidificador/processador até virar um arroz (será preciso fazer em etapas)/ Transfira para um refratário, cubra com papel filme e faça furinhos/ Leve ao micro-ondas por 5 minutos/ Depois de feito, misture a carne, 3 xícaras do arroz e os temperos e distribua em um refratário/ Regue com um fio de azeite e leve ao forno pré-aquecido a 180 graus por uns 35 a 40 minutos/')
insert into Receita values(13, 'Salada Quente', 'Almoço','2 xic, 1, a gosto, a gosto, 4 xic, 1/2, a gosto', 'grão de bico, folha de louro, sal, pimenta, folhas de espinafre lavados, cebola picada, azeite para refogar', 'Deixe o grão-de-bico de molho de um dia para o outro ou por pelo menos 8 horas/ Cozinhe na pressão com a folha de louro e sal deixando no ponto al-dente (mais ou menos 15 minutos)/ Escorra e reserve/ Refogue a cebola picada no azeite até ficar transparente/ Pique grosseiramente as folhas de espinafre e refogue junto com a cebola apenas até murchar/ Apague o fogo, junte o grão-de-bico cozido/ Finalize com pimenta, um fio de azeite e acerte o sal, se necessário/ Sirva quente/')
insert into Receita values(14, 'Fritada de Espinafre', 'Jantar','2 csopa, 1/2, 1 xic, 250g, 6, 1/4 ccha, 1/4 ccha, 1/4', 'óleo, cebola cortada em cubos, tomate sem sementes cortado em cubos e rodelas, folhas de espinafre cortadas grosseiramente, ovos, sal, pimenta-do-reino, suco de limão-siciliano', 'Em uma frigideira (ou assadeira) que possa ir ao forno, espalhe o óleo em todo o fundo e leve ao fogo médio até aquecer/ Coloque a cebola e o tomate e refogue por 2 minutos/ Junte o espinafre e espere murchar/ Misture os ovos batidos com o sal e a pimenta/ Deixe cozinhar por 4 minutos sem mexer/ Coloque as rodelas de tomate por cima e regue com o limão/ Leve ao forno preaquecido a 180 ˚C e asse por 3 minutos ou até dourar/')
insert into Receita values(15, 'Escondidinho de batata-doce com carne moída', 'Lanche','1/2 xic, 1 csopa, 1 xic, a gosto', 'batata-doce com casca e cozida, mostarda, carne moída cozida, sal', 'Amasse a batata com um garfo, e  misture-a com a mostarda e o sal/ Coloque a carne moída no fundo do potinho e a batata-doce no topo/ Leve ao forno ou microondas até aquecer/')
insert into Receita values(16, 'Espaguete de legumes de Letícia Spiller', 'Almoço','a gosto, 1, 2, 1/2, 1, 4 porções, 1, 1', 'alho amassado, cebola média picada em cubos, tomates picados em cubos, polpa de tomate, palmito pupunha grande cortado em fios, brócolis, cenoura cortada em rodelas levemente cozidas, abobrinha media cortada em tiras', 'Doure o alho, metade da cebola e os tomates picadinhos em um fio de azeite/ Coloque a polpa de tomate e deixe refogar com um pouco de água/ Em outra panela, refogue alho e o restante da cebola no azeite/ Coloque o palmito, refogue e coloque um pouco de água, se necessário/ Acrescente o brócolis, a cenoura e a abobrinha, mexendo um pouco para refogar/ Acerte o sal e tempere a gosto/ Coloque o molho de tomate por cima e sirva/')
insert into Receita values(17, 'Lasanha de abobrinha e tofu', 'Janta','300g, 1 ccha, 1, 3 dentes, 3, 3 xic, 1 1/2 ccha, 1/2 xic, a gosto, a gosto', 'tofu firme, azeite de oliva, cebola pequena picada, alho picado, abobrinha grandes cortadas em lâminas, molho de tomate caseiro, orégano, folhas frescas de manjericão, sal, pimenta ', 'Amasse bem o tofu e tempere com o sal, a pimenta, a cúrcuma e 2 colheres (sopa) de azeite/ Reserve/ Em uma panela, aqueça o restante do azeite e refogue a cebola e o alho/ Junte o tofu e refogue mais um pouco/ Monte a lasanha em uma travessa refratária untada com o azeite/ Intercale camadas da abobrinha, do molho de tomate e do tofu refogado/ Finalize com a abobrinha e algumas colheradas de molho/ Polvilhe com o orégano e espalhe o manjericão/ Leve ao forno preaquecido a 180˚C por 20 minutos/')
insert into Receita values(18, 'Macarrão de grão-de-bico com espinafre', 'Janta','1 csopa, 1 csopa, 1 dente, 1 xic, 2 csopa, 1/2, 200g, 100g, a gosto, a gosto', 'manteiga, azeite, alho picado, caldo de legumes caseiro, biomassa de banana verde, suco de limão siciliano, macarrão de grão de bico, espinafre, raspas de limão, sal', 'Prepare o  molho primeiro: em uma panela, junte a manteiga com o azeite e doure o alho/ Acrescente o caldo de legumes, a biomassa de banana verde, raspas e o suco de limão/ Tempere com o sal e reserve/ Em uma panela com água fervente e temperada com 1 fio de azeite e um pouco de sal, adicione o macarrão e o espinafre/ Cozinhe por 3 minutos (ou só até a massa ficar al dente)/ Escorra e passe o macarrão com o espinafre para um prato/ Regue com o molho e decore com a pimenta/')
insert into Receita values(19, 'Arroz de couve-flor com ghee', 'Janta','1, 1/4, a gosto, 1 ccha, 1L', 'couve-flor pequena, cebola picada, sal, manteiga ghee, água fervente', 'Mergulhe a couve-flor inteira na água e retire em seguida/ Escorra bem, pique em pedaços e bata rapidamente no liquidificador/ Reserve/ Refogue a cebola com a manteiga ghee, junte a couve-flor e já desligue o fogo/ Ajuste o sal/ Sirva quente ou use no recheio do charuto/')
insert into Receita values(20, 'Pizza de omelete com espinafre', 'Janta','2, 1 ccha, 1 xic, 1/4, a gosto, a gosto, a gosto, a gosto, a gosto', 'ovos caipiras, manteiga, espinafre previamente salteado na manteiga, cebola pequena cortada em rodelas finas, azeite, orégano, manjericão, tomate cereja cortado em rodelas, queijo parmesão ralado', 'Bata os ovos com um garfo, adicione o sal e reserve/ Em uma frigideira, coloque o azeite e um pouco de manteiga/ Despeje os despeje os ovos batidos/ Adicione os verdes, os tomates, cebola e, por último, o queijo/ Tampe e deixe no fogo baixo por 3 minutos/ Finalize com mais orégano e manjericão/')


update Receita set alimentos = 'Granola, Farinha de aveia, Óleo de coco, Banana, Ovo, Fermento em pó, Canela em pó'where nomeReceita = 'Bolinho de granola'
update Receita set alimentos = 'manteiga, cogumelo, ovo, sal'where nomeReceita = 'Ovos mexidos com Cogumelos'
update Receita set alimentos = 'Peito de Frango,cenoura,vagem, pimentão, abobrinha, cebola, shoyu, pimenta do reino'where nomeReceita = 'Frango com Legumes'
update Receita set alimentos = 'tortilha de milho,agrião,salmão,queijo parmesão'where nomeReceita = 'Wrap de salmão'
update Receita set alimentos = 'queijo parmesão, espinafre, brócolis, ovo, farinha de aveia, cebola, sal e pimenta'where nomeReceita = 'Bolinho de espinafre'
update Receita set alimentos = 'aveia em flocos, água, whey hidrolisado, cacau em pó, óleo de coco, banana, canela'where nomeReceita = 'Mingau de Whey'
update Receita set alimentos = 'semente de chia, leite de amêndoas, setvia, damasco, coco chips'where nomeReceita = 'Pudim de Chia'
update Receita set alimentos = 'filé mignon, cebola, manteiga Ghee, leite de amêndoas, amido de milho, molho de tomate, cogumelos, shoyo, molho inglês, sal, noz-moscada'where nomeReceita = 'Strogonoff sem Glúten'
update Receita set alimentos = 'arroz de couve-flor, carne moída, cebola, salsinha, sal, pimenta, azeite'where nomeReceita = 'Quibe de Couve Flor'
update Receita set alimentos = 'grão de bico, folha de louro, sal, pimenta, espinafre, cebola, azeite para refogar'where nomeReceita = 'Salada Quente'
update Receita set alimentos = 'óleo, cebola, tomate, espinafre, ovo, sal, pimenta-do-reino, suco de limão-siciliano'where nomeReceita = 'Fritada de Espinafre'
update Receita set alimentos = 'batata-doce, mostarda, carne moída, sal'where nomeReceita = 'Escondidinho de batata-doce com carne moída'
update Receita set alimentos = 'alho amassado, cebola, tomates, polpa de tomate, palmito, brócolis, cenoura, abobrinha'where nomeReceita = 'Espaguete de legumes de Letícia Spiller'
update Receita set alimentos = 'tofu, azeite de oliva, cebola, alho picado, abobrinha, molho de tomate, orégano, folhas frescas de manjericão, sal, pimenta'where nomeReceita = 'Lasanha de abobrinha e tofu'
update Receita set alimentos = 'couve-flor, cebola, sal, manteiga ghee, água fervente'where nomeReceita = 'Arroz de couve-flor com ghee'
update Receita set alimentos = 'ovo, manteiga, espinafre, cebola, azeite, orégano, manjericão, tomate cereja, queijo parmesão'where nomeReceita = 'Pizza de omelete com espinafre'
update Receita set medidas = '300g, 1 ccha, 1, 3 dentes, 3, 3 xic, 1 1/2 ccha, 1/2 xic, a gosto, a gosto' where nomeReceita = 'Lasanha de abobrinha e tofu'


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

/*Dicas
sp_help Dica

sp_help Notificacao
insert into Notificacao values(1, 'Hidratação', '' )*/
