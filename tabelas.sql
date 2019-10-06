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

insert into Alimento values(0,1,0,0)/*65*/

insert into Alimento values(2,1,2,0)/*66*/

insert into Alimento values(0,1,0,0)/*67*/

insert into Alimento values(0,1,0,0)/*68*/

insert into Alimento values(0,1,0,0)/*69*/

insert into Alimento values(0,0,0,0)/*70*/

insert into Alimento values(0,0,0,0)/*71*/

insert into Alimento values(0,0,0,0)/*72*/

insert into Alimento values(0,0,0,0)/*73*/

insert into Alimento values(0,0,0,0)/*74*/

insert into Alimento values(0,1,0,0)/*75*/

insert into Alimento values(0,1,0,0)/*76*/

insert into Alimento values(0,2,0,0)/*77*/

insert into Alimento values(0,2,0,0)/*78*/

insert into Alimento values(0,2,0,0)/*79*/

insert into Alimento values(0,2,0,0)/*80*/

insert into Alimento values(0,2,0,0)/*81*/

insert into Alimento values(0,1,0,0)/*82*/

insert into Alimento values(0,1,0,0)/*83*/

insert into Alimento values(0,2,0,0)/*84*/

insert into Alimento values(0,2,0,0)/*85*/

insert into Alimento values(0,1,0,0)/*86*/

insert into Alimento values(0,1,0,0)/*87*/

insert into Alimento values(0,1,0,0)/*88*/

insert into Alimento values(0,2,0,0)/*89*/


/*Salgadinho*/


insert into Alimento values(2,2,0,0)/*90*/

/*Vegetais*/

insert into Alimento values(0,1,0,0)/*91*/

insert into Alimento values(0,1,0,0)/*92*/

insert into Alimento values(0,1,0,0)/*93*/

insert into Alimento values(0,1,0,0)/*94*/

insert into Alimento values(0,1,0,0)/*95*/

insert into Alimento values(0,1,0,0)/*96*/

insert into Alimento values(0,1,0,0)/*97*/

insert into Alimento values(0,1,0,0)/*98*/


/*Biscoito de polvilho*/

insert into Alimento values(0,1,0,1)/*99*/

/*Vegetais*/

insert into Alimento values(0,1,0,0)/*100*/

insert into Alimento values(0,1,0,0)/*101*/

insert into Alimento values(0,0,0,0)/*102*/

insert into Alimento values(0,0,0,0)/*103*/

insert into Alimento values(0,1,0,0)/*104*/

insert into Alimento values(0,1,0,0)/*105*/

insert into Alimento values(0,1,0,0)/*106*/

insert into Alimento values(0,1,0,0)/*107*/

insert into Alimento values(0,1,0,0)/*108*/

insert into Alimento values(0,1,0,0)/*109*/

insert into Alimento values(0,1,0,0)/*110*/

insert into Alimento values(0,1,0,0)/*111*/

insert into Alimento values(0,1,0,0)/*112*/

insert into Alimento values(0,1,0,0)/*113*/

insert into Alimento values(0,1,0,0)/*114*/

insert into Alimento values(0,1,0,0)/*115*/

insert into Alimento values(0,1,0,0)/*116*/

insert into Alimento values(0,1,0,0)/*117*/

insert into Alimento values(0,1,0,0)/*118*/

insert into Alimento values(0,1,0,0)/*119*/

insert into Alimento values(0,1,0,0)/*120*/

/*Farinha*/

insert into Alimento values(0,1,0,0)/*121*/

insert into Alimento values(0,1,0,0)/*122*/

insert into Alimento values(0,1,0,0)/*123*/

insert into Alimento values(0,1,0,0)/*124*/


/*Vegetais*/

insert into Alimento values(0,1,0,0)/*125*/

insert into Alimento values(0,1,0,0)/*126*/

insert into Alimento values(0,1,0,0)/*127*/

insert into Alimento values(0,1,0,0)/*128*/

insert into Alimento values(0,1,0,0)/*129*/

insert into Alimento values(0,1,0,0)/*130*/

insert into Alimento values(0,1,0,0)/*131*/

insert into Alimento values(0,1,0,0)/*132*/

insert into Alimento values(0,1,0,0)/*133*/

insert into Alimento values(0,1,0,0)/*134*/

insert into Alimento values(0,1,0,0)/*135 mostarda??*/

insert into Alimento values(1,0,2,0)/*136*/

insert into Alimento values(0,1,0,0)/*137*/

insert into Alimento values(0,1,0,0)/*138*/

insert into Alimento values(0,1,0,0)/*139*/

/*Pão de queijo*/


insert into Alimento values(0,1,0,0)/*140*/

insert into Alimento values(0,1,0,0)/*141*/

/*Vegetais*/

insert into Alimento values(0,1,0,0)/*142*/

insert into Alimento values(0,1,0,0)/*143*/

insert into Alimento values(0,1,0,0)/*144*/

insert into Alimento values(0,1,0,0)/*145*/

/*Polvilho*/

insert into Alimento values(0,1,0,0)/*146*/

/*Vegetais*/

insert into Alimento values(0,1,0,0)/*147*/

insert into Alimento values(0,1,0,0)/*148*/

insert into Alimento values(0,1,0,0)/*149*/

insert into Alimento values(0,1,0,0)/*150*/

insert into Alimento values(0,1,0,0)/*151*/

insert into Alimento values(0,1,0,0)/*152*/

insert into Alimento values(0,1,0,0)/*153*/

insert into Alimento values(0,1,0,0)/*154*/

insert into Alimento values(0,1,0,0)/*155*/

insert into Alimento values(0,1,0,0)/*156*/

insert into Alimento values(0,1,0,0)/*157*/

insert into Alimento values(0,1,0,0)/*158*/

insert into Alimento values(0,2,0,0)/*159*/

insert into Alimento values(0,1,0,0)/*160*/

insert into Alimento values(0,1,0,0)/*161*/

insert into Alimento values(0,1,0,0)/*162*/


/*Frutas*/

insert into Alimento values(0,1,0,0)/*163*/

insert into Alimento values(0,1,0,0)/*164*/

insert into Alimento values(0,1,0,0)/*165*/

insert into Alimento values(0,1,0,0)/*166*/

insert into Alimento values(0,1,0,0)/*167*/

insert into Alimento values(0,1,0,0)/*168*/

insert into Alimento values(0,1,0,0)/*169*/

insert into Alimento values(0,1,0,0)/*170*/

insert into Alimento values(0,1,0,0)/*171*/

insert into Alimento values(0,1,0,0)/*172*/

insert into Alimento values(0,1,0,0)/*173*/

insert into Alimento values(0,1,0,0)/*174*/

insert into Alimento values(0,1,0,0)/*175*/

insert into Alimento values(0,1,2,0)/*176*/

insert into Alimento values(0,1,0,0)/*177*/

insert into Alimento values(0,1,0,0)/*178*/

insert into Alimento values(0,1,0,0)/*179*/

insert into Alimento values(0,1,0,0)/*180*/

insert into Alimento values(0,1,0,0)/*181*/

insert into Alimento values(0,1,0,0)/*182*/

insert into Alimento values(0,1,0,0)/*183*/

insert into Alimento values(0,1,0,0)/*184*/

insert into Alimento values(0,1,0,0)/*185*/

insert into Alimento values(0,1,0,0)/*186*/

insert into Alimento values(0,1,0,0)/*187*/

insert into Alimento values(0,1,0,0)/*188*/

insert into Alimento values(0,1,0,0)/*189*/

insert into Alimento values(0,1,0,0)/*190*/

insert into Alimento values(0,1,0,0)/*191*/

insert into Alimento values(0,1,0,0)/*192*/

insert into Alimento values(0,1,0,0)/*193*/

insert into Alimento values(0,1,0,0)/*194*/

insert into Alimento values(0,1,0,0)/*195*/

insert into Alimento values(0,1,0,0)/*196*/

insert into Alimento values(0,1,0,0)/*197*/

insert into Alimento values(0,1,2,0)/*198*/

insert into Alimento values(0,1,2,0)/*199*/

insert into Alimento values(0,1,0,0)/*200*/

insert into Alimento values(0,1,0,0)/*201*/

insert into Alimento values(0,1,0,0)/*202*/

insert into Alimento values(0,1,0,0)/*203*/

insert into Alimento values(0,1,0,0)/*204*/

insert into Alimento values(0,1,0,0)/*205*/

insert into Alimento values(0,1,0,0)/*206*/

insert into Alimento values(0,1,0,0)/*207*/

insert into Alimento values(0,1,0,0)/*208*/

insert into Alimento values(0,1,0,0)/*209*/

insert into Alimento values(0,1,0,0)/*210*/

insert into Alimento values(0,1,0,0)/*211*/

insert into Alimento values(0,1,0,0)/*212*/

insert into Alimento values(0,1,0,0)/*213*/

insert into Alimento values(0,1,0,0)/*214*/

insert into Alimento values(0,1,0,0)/*215*/

insert into Alimento values(0,1,0,0)/*216*/

insert into Alimento values(0,1,0,0)/*217*/

insert into Alimento values(0,1,0,0)/*218*/

insert into Alimento values(0,1,0,0)/*219*/

insert into Alimento values(0,1,0,0)/*220*/

insert into Alimento values(0,1,0,0)/*221*/

insert into Alimento values(0,1,0,0)/*222*/

insert into Alimento values(0,1,0,0)/*223*/

insert into Alimento values(0,1,0,0)/*224*/

insert into Alimento values(0,1,0,0)/*225*/

insert into Alimento values(0,1,0,0)/*226*/

insert into Alimento values(0,1,0,0)/*227*/

insert into Alimento values(0,1,0,0)/*228*/

insert into Alimento values(0,1,0,0)/*229*/

insert into Alimento values(0,1,0,0)/*230*/

insert into Alimento values(0,1,0,0)/*231*/

insert into Alimento values(0,1,0,0)/*232*/

insert into Alimento values(0,1,0,0)/*233*/

insert into Alimento values(0,1,0,0)/*234*/

insert into Alimento values(0,1,0,0)/*235*/

insert into Alimento values(0,1,0,0)/*236*/

insert into Alimento values(0,1,0,0)/*237*/

insert into Alimento values(0,1,0,0)/*238*/

insert into Alimento values(0,1,0,0)/*239*/

insert into Alimento values(0,1,0,0)/*240*/

insert into Alimento values(0,1,0,0)/*241*/

insert into Alimento values(0,1,0,0)/*242*/

insert into Alimento values(0,1,0,0)/*243*/

insert into Alimento values(0,1,0,0)/*244*/

insert into Alimento values(0,1,0,0)/*245*/

insert into Alimento values(0,1,0,0)/*246*/

insert into Alimento values(0,1,0,0)/*247*/

insert into Alimento values(0,1,0,0)/*248*/

insert into Alimento values(0,1,0,0)/*249*/

insert into Alimento values(0,1,0,0)/*250*/

insert into Alimento values(0,1,0,0)/*251*/

insert into Alimento values(0,1,0,0)/*252*/

insert into Alimento values(0,1,0,0)/*253*/

insert into Alimento values(0,1,0,0)/*254*/

insert into Alimento values(0,1,0,0)/*255*/

insert into Alimento values(0,1,0,0)/*256*/

insert into Alimento values(0,1,0,0)/*257*/

insert into Alimento values(0,1,0,0)/*258*/



/*DUDA MORREU A PARTIR DESSE PONTO, REVISAR TUDO*/

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


/*SALISAI AQUI*/

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