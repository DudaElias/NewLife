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

insert into Alimento values(2,2,0,0)/*7*/


insert into Alimento values(2,1,1,1)/*8*/

insert into Alimento values(2,2,1,0)/*9*/

insert into Alimento values(2,2,1,0)/*10*/

insert into Alimento values(2,2,1,0)/*11*/

insert into Alimento values(2,2,1,0)/*12*/

insert into Alimento values(2,1,1,0)/*13*/

insert into Alimento values(2,2,1,1)/*14*/

insert into Alimento values(2,2,1,1)/*15*/

insert into Alimento values(2,2,1,1)/*16*/

insert into Alimento values(2,2,1,1)/*17*/

insert into Alimento values(2,2,1,1)/*18*/

insert into Alimento values(0,2,0,0)/*19*/

insert into Alimento values(0,2,2,0)/*20*/

insert into Alimento values(2,2,0,0)/*21*/

insert into Alimento values(2,2,0,0)/*22*/

insert into Alimento values(2,2,0,0)/*23*/

insert into Alimento values(2,1,0,0)/*24*/

insert into Alimento values(2,1,2,0)/*25*/

insert into Alimento values(2,1,2,0)/*26*/

insert into Alimento values(0,0,0,0)/*27*/

insert into Alimento values(0,1,0,0)/*28*/

insert into Alimento values(1,2,2,0)/*29*/

insert into Alimento values(1,2,0,0)/*30*/

insert into Alimento values(0,0,0,0)/*31*/

insert into Alimento values(2,0,0,0)/*32*/

insert into Alimento values(0,1,0,0)/*33*/

insert into Alimento values(2,0,0,0)/*34*/

insert into Alimento values(2,0,0,0)/*35*/

insert into Alimento values(2,1,2,0)/*36*/

insert into Alimento values(2,1,2,2)/*37*/

insert into Alimento values(2,1,2,2)/*38*/

insert into Alimento values(2,1,2,2)/*39*/

insert into Alimento values(2,1,2,0)/*40*/

insert into Alimento values(2,1,2,2)/*41*/

insert into Alimento values(2,2,0,0)/*42*/

insert into Alimento values(0,2,0,0)/*43*/

insert into Alimento values(0,1,0,0)/*44*/

insert into Alimento values(0,2,0,0)/*45*/

insert into Alimento values(2,1,0,0)/*46*/

insert into Alimento values(1,2,2,0)/*47*/

insert into Alimento values(2,1,2,0)/*48*/

insert into Alimento values(0,2,0,0)/*49*/

insert into Alimento values(2,1,2,0)/*50*/

insert into Alimento values(2,1,1,2)/*51*/

insert into Alimento values(2,1,2,0)/*52*/

insert into Alimento values(2,1,2,0)/*53*/

insert into Alimento values(2,1,2,0)/*54*/

insert into Alimento values(2,0,1,2)/*55*/

insert into Alimento values(2,0,1,2)/*56*/

insert into Alimento values(2,1,1,2)/*57*/

insert into Alimento values(2,1,1,2)/*58*/

insert into Alimento values(2,0,1,2)/*59*/

insert into Alimento values(2,0,1,2)/*60*/

insert into Alimento values(0,2,0,0)/*61*/

insert into Alimento values(1,2,2,0)/*62*/

insert into Alimento values(1,0,1,2)/*63*/

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

insert into Alimento values(2,1,0,0)/*90*/

insert into Alimento values(0,1,0,0)/*91*/

insert into Alimento values(0,1,0,0)/*92*/

insert into Alimento values(0,1,0,0)/*93*/

insert into Alimento values(0,1,0,0)/*94*/

insert into Alimento values(0,1,0,0)/*95*/

insert into Alimento values(0,1,0,0)/*96*/

insert into Alimento values(0,1,0,0)/*97*/

insert into Alimento values(0,1,0,0)/*98*/

insert into Alimento values(0,1,0,1)/*99*/

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



insert into Alimento values(0,1,0,0)/*121*/

insert into Alimento values(0,1,0,0)/*122*/

insert into Alimento values(0,1,0,0)/*123*/

insert into Alimento values(0,1,0,0)/*124*/

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

insert into Alimento values(0,1,0,0)/*140*/

insert into Alimento values(0,1,0,0)/*141*/

insert into Alimento values(0,1,0,0)/*142*/

insert into Alimento values(0,1,0,0)/*143*/

insert into Alimento values(0,1,0,0)/*144*/

insert into Alimento values(0,1,0,0)/*145*/

insert into Alimento values(0,1,0,0)/*146*/

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




insert into Alimento values(0,1,0,0)/*259*/

insert into Alimento values(0,0,0,0)/*260*/

insert into Alimento values(0,0,1,0)/*261*/

insert into Alimento values(0,0,1,0)/*262*/

insert into Alimento values(0,0,1,0)/*263*/

insert into Alimento values(0,0,1,0)/*264*/

insert into Alimento values(0,0,1,0)/*265*/

insert into Alimento values(0,0,1,0)/*266*/

insert into Alimento values(0,0,0,0)/*267*/

insert into Alimento values(0,2,0,0)/*268*/

insert into Alimento values(0,2,0,0)/*269*/

insert into Alimento values(0,2,0,0)/*270*/

insert into Alimento values(0,1,0,0)/*271*/

insert into Alimento values(0,1,0,0)/*272*/

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

insert into Alimento values(0,1,0,0)/*285*/

insert into Alimento values(0,1,0,0)/*286*/

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