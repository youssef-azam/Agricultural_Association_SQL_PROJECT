create table Association 
( id  int  not null IDENTITY(1,1) PRIMARY KEY,
name varchar(50) not null ,
Governorate varchar(50) not null ,
center varchar(50) not null,
Arrow int DEFAULT '0' ,
carat int DEFAULT '0' ,
Arcre int DEFAULT '0' ,
id_manger int not null FOREIGN KEY REFERENCES Manger(id) 
)
-------------------------------------------
create table Manger 
(
id  int  not null IDENTITY(1,1) PRIMARY KEY,
name varchar(50) not null ,
snn  varchar(14) not null  ,
phone varchar(11) null,
salary numeric(7) not null ,
email varchar(50) null 
)
--------------------------------------------------------------
create table superviser
(id int  not null IDENTITY(1,1) PRIMARY KEY,
name varchar(50) not null ,
snn varchar(14) not null,
email varchar(50) null,
salary numeric(7) not null ,
id_manger int not null  FOREIGN KEY REFERENCES Manger(id)
)
------------------------------------------------
create table docks
(code  int  not null IDENTITY(1,1) PRIMARY KEY,
name varchar(50) not null ,
Arrow int DEFAULT '0' ,
carat int DEFAULT '0' ,
Arcre int DEFAULT '0' ,
id_superviser int not null  FOREIGN KEY REFERENCES superviser(id)
)
------------------------------------------------

create table Agricultur_Supplies
(id  int  not null IDENTITY(1,1) PRIMARY KEY,
name varchar(50) not null ,
Quantity int not null ,
id_Association int not null FOREIGN KEY REFERENCES Association(id)
)
------------------------------------------
create table Land
( 
code  int  not null IDENTITY(1,1) PRIMARY KEY,
Arrow int DEFAULT '0' ,
carat int DEFAULT '0' ,
Arcre int DEFAULT '0' ,
Tribal varchar(50) not null,
Nautical varchar(50) not null,
West varchar(50) not null,
East varchar(50) not null,
id_docks int not null  FOREIGN KEY REFERENCES docks(code),
id_owner int not null  FOREIGN KEY REFERENCES Owner(id),
id_crops int not null  FOREIGN KEY REFERENCES crops(id)
)
----------------------------------------------
create table Owner
(id  int  not null IDENTITY(1,1) PRIMARY KEY,
name varchar(50) not null ,
Numofbices int not null check (Numofbices >= 0),
piecenum int not null ,
snn varchar(50) not null ,
phone varchar(50) not null ,
Objectv_owner varchar(50)  not null ,
Arrow int DEFAULT '0' ,
carat int DEFAULT '0' ,
Arcre int DEFAULT '0' 
)
--------------------------------------------
create table crops
(id int not null IDENTITY(1,1) PRIMARY KEY,
name varchar(50) not null ,
Arrow int DEFAULT '0' ,
carat int DEFAULT '0' ,
Arcre int DEFAULT '0' ,
timing varchar(50) not null,
)
---------------------------------------------
------------DATA----------------------
insert into Manger values ('Azzam Mahfouz Muhammad ','2030352352645','01122627208',4500,null)
insert into Manger values('Mohamed Abdel Wahab Hassan ','2010352352645','01129627208',4300,null)
insert into Manger values('Hassan Rizk Fathi ','2080352352645','01126627208',4400,null)
insert into Manger values('Amr Saleh Ahmed ','2030352352625','01122627202',4700,null)
insert into Manger values('Bassem Hassan Youssef','2035352352645','01242627208',4500,null)
insert into Manger values('Ahmed Noureddine ','20383522332645','01132627208',4500,null)
insert into Manger values('Muhammad Abdul Wahab Ali ','2030352365645','01122927208',4500,null)
insert into Manger values('Ahmed Ismail Mohamed ','2030352532645','01165627208',4510,null)
insert into Manger values('Gamal Abdul Halim Syed ','2030352352659','01122629508',4300,null)
insert into Manger values('Ibrahim Rabih Zain ','2030352359855','01122632208',4500,null)
insert into Manger values('Ahmed Abdel Wahab Fadl ','203035152645','0112527208',4500,null)
insert into Manger values('Shaaban hussin Ahmed','2030352352645','01122627208',5500,null)
insert into Manger values('Muhammad Hassan Abdul Wahab Noman ','203035262645','0112227208',4500,null)
insert into Manger values('Mohamed Khaled Syed ','2030365935645','01126527208',4500,null)
insert into Manger values('Atef Abdel Samie Taha ','2030353262645','01565226208',4500,null)
insert into Manger values('Ali Zain Tariq','2030352352645','01522627208',4500,null)
insert into Manger values('Mostafa Tariq Syed Abdel Wahhab ','2830352352645','01162627208',4500,null)
insert into Manger values('Mostafa Abdel Latif Ahmed ','2930352352645','01128627208',4500,null)
insert into Manger values('Hussein Mahmoud Ahmed ','1930352352645','01122626508',4500,null)
insert into Manger values('Ahmed Khaled Mohamed ','1930352352645','01122627265',4500,null)
insert into Manger values ('Azzam Mahfouz Muhammad ','2030352352645','01122627208',4400,null)
insert into Manger values ('ohamed gamal Abd Elhalem ','2030358754320','01122777208',4900,null)
insert into Manger values ('Muhammad sayd kamal ','9054719352645','01127894231',4444,null)
insert into Manger values ('Mahfouz gamal seyd ','2030391752699','01122627212',4599,null)
insert into Manger values ('Mo salah ken ','9944352352645','01122621598',4899,null)
insert into Manger values ('Ken ohame gamal ','20609173696100','01115927208',4990,null)
insert into Manger values ('Muhammad Gamal syed ','10293333756645','01122623578',4588,null)
insert into Manger values ('Iyenaas Gameel Amier ','12098765432005','01122695408',4566,null)
insert into Manger values ('Norain said elden ','2030172940687','01122624568',7692,null)
insert into Manger values ('Rania Mohamed sayd ','2030352352645','01122624538',8540,null)
insert into Manger values ('Afnan saad Eldin ','1029847665430','01122678408',4980,null)
insert into Manger values ('Shafak Osama ','3040352352699','01122648008',4800,null)
insert into Manger values ('Nadia Mafouz ','6080352352645','01122679508',5510,null)
insert into Manger values ('Maram saad Eldien ','2030352352691','01582627208',4200,null)
insert into Manger values ('saif salah ','2030358734645','01122627788',4190,null)
insert into Manger values ('mahmud nadr ','2030981202645','01122624688',8100,null)
insert into Manger values ('Yaha mahmud','2030352361645','01122627860',4650,null)
insert into Manger values ('Rahaf Sayed ','2030359112645','01122627418',4100,null)
insert into Manger values ('Abrar Essam ','2030367812645','01122685208',4000,null)
insert into Manger values ('Ganoby Mohamed ','203002352645','01129630208',4250,null)

-----------------------------------------------------------------------------------------------------------------
insert into Owner values ('Ibrahim Ibrahim Abdel-Wahhab',9,764,'26812222200132','01233627298','owner',1,18,12)
insert into Owner values ('Ibrahim Ahmed Mahmoud',1,2227,'26812233300132','01222627278','owner',0,7,5)
insert into Owner values ('Ibrahim El-Desouki Mohamed Mohamed',1,2381,'26815522200132','01192627298','owner',1,20,22)
insert into Owner values ('Ibrahim Al-Sayed Diab Al-Zeer',1,1885,'26814412200132','01012627298','owner',1,18,20)
insert into Owner values ('Ibrahim Juma Othman Ali ',3,1183,'26811352200132','01022627298','owner',0,8,10)
insert into Owner values ('Ibrahim Hassan Al-Sayed Abdel-Latif',1,2601,'28512222200132','01229527298','owner',0,10,8)
insert into Owner values ('Ibrahim Hassan Badr',1,935,'26812222212232','01222659898','owner',2,7,18)
insert into Owner values ('Ibrahim Hassan Hussein Marzouk',1,1704,'23612222200132','01222638398','owner',1,18,10)
insert into Owner values ('Ibrahim Sayed Gad Hassan',2,97,'26815589200132','01222668398','owner',1,14,20)
insert into Owner values ('Ibrahim Shaker Mohamed Abdel Majeed',1,954,'26812222255132','01222628998','owner',2,0,12)
insert into Owner values ('Ibrahim Shahat Abdel Wahab',1,755,'26812222265132','01222627848','owner',1,0,0)
insert into Owner values ('Ibrahim Sadiq Muhammad Al-Sayed',3,7684,'26815255800132','01222589298','owner',1,8,0)
insert into Owner values ('Ibrahim Abdel-Hamid Ibrahim according to God',1,7288,'26815922200132','01222984298','owner',1,0,0)
insert into Owner values ('Ibrahim Abdel Aziz Ismail',6,8841,'26812222256732','01222128798','owner',2,18,0)
insert into Owner values ('Ibrahim Abdel Nabi Nasr Ibrahim',1,7964,'26812256900132','01225627298','owner',2,20,12)
insert into Owner values ('Ibrahim Abdel-Wahhab Mohamed Abdel-Karim',1,8164,'21982222200132','01222012298','owner',1,19,12)
insert into Owner values ('Ibrahim Atris Muhammad Badawi',1,1288,'26812222984132','01222626598','owner',1,22,12)
insert into Owner values ('Ibrahim Aziz Ibrahim Abdel-Wahhab',1,5514,'26652222200132','01222567298','owner',1,20,12)
insert into Owner values ('Ibrahim Esmat Yusuf Ali',1,1266,'26812288500132','01222629898','owner',1,23,12)
insert into Owner values ('Ibrahim Ali Shaaban',1,578,'26812222200891','01222615998','owner',1,20,12)

insert into Owner values ('Ibrahim  Abdel-Wahhab',1,566,'22326114732','0121087298','m',3,8,2)
insert into Owner values ('ail  mostaf',1,54,'22312500132','0123697298','m',2,8,2)
insert into Owner values ('omar  taha',7,5,'223261212332','0123223698','m',14,10,21)
insert into Owner values ('hussien Abdel-Wahhab',1,1164,'22326850132','012126298','m',0,8,0)
insert into Owner values ('Ibrahim  azam',4,5642,'223261369132','012336798','m',4,8,19)
insert into Owner values ('amr  Abdel-Wahhab',1,5164,'223261110132','0123312658','m',0,7,2)
insert into Owner values ('Ibrahim  kareem',3,5064,'2232610330132','0127487298','m',2,9,2)
insert into Owner values ('taha  Abdel-Wahhab',1,514,'22326123200132','01203687298','m',0,0,10)
insert into Owner values ('aya  razk',1,5620,'2231212200132','01233687252','m',1,10,21)
insert into Owner values ('fahd ail',2,531,'22320002200132','0123368236','m',1,9,2)
insert into Owner values ('youssef Ibrahim  Abdel',1,5064,'223261400132','01233017298','m',1,8,2)
insert into Owner values ('Assam  Abdel-Wahhab',3,24,'223261740132','01233620298','m',1,3,2)
insert into Owner values ('abdo  khalde',1,534,'1025612123132','0120123298','m',1,16,23)
insert into Owner values ('mahmoued  Ahhab',2,49,'21202612200132','01225687298','m',0,8,21)
insert into Owner values ('abnoud greges',1,185,'21232200132','0123381408','m',0,8,0)
insert into Owner values ('nmasd  Abdel-Wahhab',5,158,'223369200132','01230127298','m',10,17,0)
insert into Owner values ('mosed Ibrahim  ',3,402,'22152200132','0123360125','m',1,8,2)
insert into Owner values ('Alaa  ghaleb',2,664,'223263698132','013687298','m',7,0,2)
insert into Owner values ('AShref  mohmed',3,532,'2225369200132','0133687298','m',5,1,2)
insert into Owner values ('ahmed  Abdel-Wahhabtarek',2,3524,'363912200132','012387298','m',2,15,2)

insert into Association values ('Big dimple','giza','Class',2190,21,0,1)
insert into Association values ('Neighborhood','giza','Class',1175,17,0,2)
insert into Association values ('blunt','giza','crying',1186,17,0,3)
insert into Association values ('Fadel facility','giza','crying',443,11,0,4)
insert into Association values ('kindness','giza','crying',1360,12,0,5)
insert into Association values ('ahnasia','Bani Sweif','ahnasia',1186,17,0,6)
insert into Association values ('Hindfa','Bani Sweif','Samasta',1186,17,0,7)
insert into Association values ('red kom','Bani Sweif','Bani Sweif',1186,17,0,8)
insert into Association values ('Bush','Bani Sweif','Nasser Center',1186,17,0,9)
insert into Association values ('Jerbaa','Bani Sweif','Wasti',1186,17,0,10)
insert into Association values ('Asyut','Asyut','Abnoub',1186,17,0,11)
insert into Association values ('Al-Fath','Asyut','Al-Fath',1186,17,0,12)
insert into Association values ('Manfalout','Asyut','Manfalout',1186,17,0,13)
insert into Association values ('Aswan','Aswan','Aswan',1186,17,0,14)
insert into Association values ('Edfu','Aswan','Edfu',1186,17,0,15)
insert into Association values ('Kom Ombo','Aswan','Kom Ombo',1186,17,0,16)
insert into Association values ('Draw','Aswan','Draw',1186,17,0,17)
insert into Association values ('Sohag','Sohag','Sohag',1186,17,0,18)
insert into Association values ('Eastern Shobak','Sohag','Class',1186,17,0,19)
insert into Association values ('Akhmim','Sohag','Akhmim',1186,17,0,20)

insert into superviser values('mohamed ail taha','2326563266555',null,4100,1)
insert into superviser values('brahim Muhammed Ibrahim','23265632665969',null,4200,2)
insert into superviser values('Ibrahim Kamel Abdel-Al','2326587266555',null,4100,3)
insert into superviser values('Ibrahim Esmat Yusuf Ali','2329563266555',null,4100,4)
insert into superviser values('Muhammad Abdul Wahab Ali','9626563266555',null,4200,5)
insert into superviser values('youssef azam mahfoze','2326563266555',null,4200,6)
insert into superviser values( 'ail ail taha','2326563266555',null,4200,7)
insert into superviser values('mohamed ail taha','2326563266555',null,4300,8)
insert into superviser values('Ali Zain Tariq','2126563266555',null,4100,9)
insert into superviser values('Mostafa Tariq Syed Abdel Wahhab','23165632665969',null,4200,10)
insert into superviser values('Mostafa Abdel Latif Ahmed','2323587266555',null,4100,11)
insert into superviser values('Hussein Mahmoud Ahmed','1399563266555',null,4100,12)
insert into superviser values('Amr Abdul Wahab Ali','12616563266555',null,4200,13)
insert into superviser values('Atef Abdel Samie Taha ','2826563266555',null,4200,14)
insert into superviser values('Mohamed Khaled Syed ','1656563266555',null,4200,15)
insert into superviser values('Muhammad Hassan Abdul Wahab Noman ','2756563266555',null,4300,16)
insert into superviser values('OMAR Mahmoud Ahmed','231595632665',null,4100,17)
insert into superviser values('Amr AIL Wahab Ali','3263556328855',null,4300,18)
insert into superviser values('AHMED Samie Taha ','25456656326555',null,4500,19)
insert into superviser values('Mohamed  Syed ','336363266555',null,4200,20)
insert into superviser values('azam taha','23256863266555',null,5000,1)
insert into superviser values('karem taha','232623266555',null,4300,2)
insert into superviser values('mostsfs taha','232363266555',null,4100,3)
insert into superviser values('mohamed ail taha','2321235632555',null,4200,4)
insert into superviser values('khalefe hussien','2322363266555',null,4900,5)
insert into superviser values('mohamed ahmed','23269633266555',null,4700,6)
insert into superviser values('mohamed zadien taha','23265452266555',null,4200,7)
insert into superviser values('marem ail taha','232656123966555',null,4000,8)
insert into superviser values('mohamed ail hassen','2326563456555',null,4100,9)
insert into superviser values('hussien  taha','2326563742555',null,4200,10)
insert into superviser values('mohamed omar taha','23265632236555',null,4200,11)
insert into superviser values('mohamed ail taha','2326563269655',null,4500,12)
insert into superviser values('moh ail youssef','232625266555',null,4900,13)
insert into superviser values('omar ail taha','2326563266555',null,4800,14)
insert into superviser values('hanen ail taha','23264123266555',null,4700,15)
insert into superviser values('aber ail taha','2326563266555',null,4600,16)
insert into superviser values(' aya taha','2326129266555',null,4500,17)
insert into superviser values('mohamed  taha','232651466555',null,4400,18)
insert into superviser values('mohamed ail ','232656789555',null,4300,19)
insert into superviser values('ail taha','2326541266555',null,4200,20)
insert into superviser values('mostafa taha','2326541266555',null,4200,20)


insert into docks values ('frist',963,20,12,1)
insert into docks values ('second',1100,20,10,2)
insert into docks values ('thrid',2132,19,3,3)
insert into docks values ('A_frist',1963,10,11,4)
insert into docks values ('B_frist',2163,15,15,5)
insert into docks values ('C_frist',526,10,10,6)
insert into docks values ('D_frist',1563,7,2,7)
insert into docks values ('E_frist',2460,10,2,8)
insert into docks values ('A_second',1239,20,2,9)
insert into docks values ('B_second',962,20,7,10)
insert into docks values ('C_second',993,23,9,11)
insert into docks values ('D_second',1263,22,11,12)
insert into docks values ('E_second',1963,10,19,13)
insert into docks values ('A_thrid',1569,23,19,14)
insert into docks values ('B_thrid',1562,12,2,15)
insert into docks values ('C_thrid',1323,19,20,16)
insert into docks values ('H_second',1963,1,9,17)
insert into docks values ('K_thrid',1869,2,10,18)
insert into docks values ('L_thrid',1962,11,20,19)
insert into docks values ('M_thrid',1523,15,2,20)
insert into docks values ('n_f',152,17,2,21)
insert into docks values ('n_t',1743,16,2,22)
insert into docks values ('n_th',4523,6,2,23)
insert into docks values ('n_thr',1223,5,2,25)
insert into docks values ('n_rid',1923,8,2,26)
insert into docks values ('n_thd',1323,5,24,27)
insert into docks values ('n_f',1596,1,22,29)
insert into docks values ('k_thd',2523,23,2,30)
insert into docks values ('k_thr',2323,22,2,31)
insert into docks values ('k_th',3623,14,2,32)
insert into docks values ('k_id',2523,23,2,33)
insert into docks values ('k_trid',4723,13,2,34)
insert into docks values ('k_phrid',12323,9,5,35)
insert into docks values ('r_tlpid',1523,8,9,36)
insert into docks values ('r_tnef',1521,15,1,37)
insert into docks values ('r_theid',1113,1,2,38)
insert into docks values ('r_thnj',1223,2,10,39)
insert into docks values ('e_teer',1333,6,2,40)
insert into docks values ('o_jeid',1443,5,2,41)
insert into docks values ('k_id',1555,19,2,42)


insert into crops values ('corn','Summer')
insert into crops values ('Bean','Summer')
insert into crops values ('wheat','winter')
insert into crops values ('linen','winter')

insert into Land values(1,2,1,'mohamed amr','Ail omar','street','limit',1,1,1)
insert into Land values(8,2,1,'hussin amr','Azam omar','street','street',2,2,1)
insert into Land values(4,3,1,'mostafa ','Ail omar','limit','limit',3,3,1)
insert into Land values(2,2,1,'mona amr','Ail omar','street','hussin amr',4,4,1)
insert into Land values(0,2,9,'gmal omar','ESMAIL ','hussin amr','limit',5,5,2)
insert into Land values(2,2,12,'khield tahe','Ail omar','street','watered',6,6,2)
insert into Land values(3,2,3,'mohamed amr','Ail omar','street','limit',7,7,2)
insert into Land values(2,5,22,'Assame youssef','watered','street','limit',8,8,2)
insert into Land values(1,25,1,'mohamed amr','Ail omar','street','limit',9,9,3)
insert into Land values(4,10,19,'mohamed amr','Ail omar','street','limit',10,10,3)
insert into Land values(12,0,20,'watered','Ail omar','street','limit',11,11,3)
insert into Land values(2,12,0,'mohamed amr','Ail omar','street','limit',12,12,3)
insert into Land values(6,21,12,'mohamed amr','watered','street','limit',13,13,2)
insert into Land values(0,8,21,'mohamed amr','Ail omar','watered','limit',14,14,2)
insert into Land values(1,6,9,'watered','Ail omar','street','limit',15,15,3)
insert into Land values(0,22,21,'mohamed amr','Ail omar','street','limit',16,16,3)
insert into Land values(1,22,13,'limit','Ail omar','street','limit',17,17,3)
insert into Land values(5,20,0,'mohamed amr','Ail omar','street','limit',18,18,3)
insert into Land values(2,20,11,'mohamed amr','Ail omar','street','limit',19,19,4)
insert into Land values(1,0,0,'limit','Ail omar','street','limit',20,20,4)
 insert into Land values(14,2,9,'mohamed amr','Ail omar','street','limit',21,21,1)
insert into Land values(8,2,8,'hussin amr','Azam omar','street','street',22,22,1)
insert into Land values(3,3,7,'mostafa ','Ail omar','limit','limit',23,23,1)
insert into Land values(7,2,3,'mona amr','Ail omar','street','hussin amr',25,24,1)
insert into Land values(0,2,3,'gmal omar','ESMAIL ','hussin amr','limit',26,25,2)
insert into Land values(0,2,512,'khield tahe','Ail omar','street','watered',27,26,2)
insert into Land values(0,2,9,'mohamed amr','Ail omar','street','limit',29,27,2)
insert into Land values(1,5,2,'Assame youssef','watered','street','limit',30,28,2)
insert into Land values(7,22,1,'mohamed amr','Ail omar','street','limit',31,29,3)
insert into Land values(3,11,19,'mohamed amr','Ail omar','street','limit',32,30,3)
insert into Land values(2,0,20,'watered','Ail omar','street','limit',33,31,3)
insert into Land values(2,2,0,'mohamed amr','Ail omar','street','limit',34,32,3)
insert into Land values(3,1,12,'mohamed amr','watered','street','limit',35,33,2)
insert into Land values(5,8,21,'mohamed amr','Ail omar','watered','limit',36,34,2)
insert into Land values(7,16,9,'watered','Ail omar','street','limit',37,35,3)
insert into Land values(9,12,21,'mohamed amr','Ail omar','street','limit',38,36,3)
insert into Land values(1,3,13,'limit','Ail omar','street','limit',39,37,3)
insert into Land values(8,0,0,'mohamed amr','Ail omar','street','limit',40,38,3)
insert into Land values(4,0,11,'mohamed amr','Ail omar','street','limit',24,39,4)
insert into Land values(3,0,0,'limit','Ail omar','street','limit',28,40,4)


insert into  Agricultur_Supplies values('fertilizer',100,1);
insert into  Agricultur_Supplies values('fertilizer',200,2);
insert into  Agricultur_Supplies values('fertilizer',300,3);
insert into  Agricultur_Supplies values('fertilizer',400,4);
insert into  Agricultur_Supplies values('fertilizer',500,5);
insert into  Agricultur_Supplies values('fertilizer',100,6);
insert into  Agricultur_Supplies values('fertilizer',2500,7);
insert into  Agricultur_Supplies values('fertilizer',1200,8);
insert into  Agricultur_Supplies values('fertilizer',100,9);
insert into  Agricultur_Supplies values('fertilizer',900,10);
insert into  Agricultur_Supplies values('fertilizer',600,11);
insert into  Agricultur_Supplies values('fertilizer',100,12);
insert into  Agricultur_Supplies values('fertilizer',900,13);
insert into  Agricultur_Supplies values('fertilizer',150,14);
insert into  Agricultur_Supplies values('fertilizer',800,15);
insert into  Agricultur_Supplies values('fertilizer',90,16);
insert into  Agricultur_Supplies values('fertilizer',100,18);
insert into  Agricultur_Supplies values('fertilizer',1300,19);
insert into  Agricultur_Supplies values('fertilizer',1200,20);
insert into  Agricultur_Supplies values('seeds',1200,1);
insert into  Agricultur_Supplies values('seeds',1100,2);
insert into  Agricultur_Supplies values('seeds',1100,3);
insert into  Agricultur_Supplies values('seeds',1030,4);
insert into  Agricultur_Supplies values('seeds',1050,5);
insert into  Agricultur_Supplies values('seeds',1600,6);
insert into  Agricultur_Supplies values('seeds',1400,7);
insert into  Agricultur_Supplies values('seeds',1600,8);
insert into  Agricultur_Supplies values('seeds',1300,9);
insert into  Agricultur_Supplies values('seeds',1200,10);
insert into  Agricultur_Supplies values('seeds',1100,11);
insert into  Agricultur_Supplies values('seeds',100,12);
insert into  Agricultur_Supplies values('seeds',100,13);
insert into  Agricultur_Supplies values('seeds',100,14);
insert into  Agricultur_Supplies values('seeds',100,15);
insert into  Agricultur_Supplies values('seeds',100,16);
insert into  Agricultur_Supplies values('seeds',100,18);
insert into  Agricultur_Supplies values('seeds',1600,19);
insert into  Agricultur_Supplies values('seeds',100,20);

-------------------------------------QUERE---------------------
select * from Agricultur_Supplies
select * from superviser
select * from Owner
select * from Land
select * from Manger
select * from docks
select * from crops
select * from Association
-------------------------Agricultur_Supplies---------------------

select distinct name from Agricultur_Supplies ---what kind of Agricultur_Supplies in association ??

select name, sum(Quantity)as sum_of_Quantity from Agricultur_Supplies group by name ---how sum of quantity in all Agricultur_Supplies by each kind ??

---------------------superviser---------------------------

select name, salary from superviser 
order by salary desc -------------each superviser order by salary desc ??-------------------

-------------Owner-----------

select name, Numofbices,piecenum,Objectv_owner,Arrow,carat,Arcre from Owner -------select important object For each Owner----------
select max(Numofbices)
from Owner

select top 3 Numofbices from Owner


select max(Numofbices) as max_pices from Owner ------how to max Num of pices----------

select name, (Arrow+Arcre+carat)as all_area,Numofbices,piecenum  from Owner ------------Total area and num of pices for each famer ??--------------

------------Land--------------

select * from Land

select (Arrow+Arcre+carat)as all_area from Land


select * from Agricultur_Supplies
select * from Association
select * from superviser
select * from Owner
select * from Land
select * from Manger
select * from docks
select * from crops
------------------------------------------
--------Association-----------
select Governorate,sum(Arrow+carat+Arcre)  as sum_area  from Association
group by Governorate
order by sum_area desc
-------------------------Agricultur_Supplies---------------------

select distinct name from Agricultur_Supplies ---what kind of Agricultur_Supplies in association ??

select name, sum(Quantity)as sum_of_Quantity from Agricultur_Supplies group by name ---how sum of quantity in all Agricultur_Supplies by each kind ??

---------------------superviser---------------------------

select name, salary from superviser 
order by salary desc -------------each superviser order by salary desc ??----------------


select name ,salary
from superviser 
where salary > 4100;
select name 
from superviser 
where name='Ibrahim Kamel Abdel-Al'

select name ,salary
from superviser 
where name like 'i%' ;

select name ,salary
from superviser 
where id_manger =1;

select name ,salary
from superviser 
where id_manger in (1,4);
-------------Owner-----------

select name, Numofbices,piecenum,Objectv_owner,Arrow,carat,Arcre from Owner -------select important object For each Owner----------

select max(Numofbices) as max_pices from Owner ------how to max Num of pices----------

select name, (Arrow+Arcre+carat)as all_area,Numofbices,piecenum  from Owner ------------Total area and num of pices for each famer ??--------------

------------Land--------------

select (Arrow+Arcre+carat)as all_area from Land -----TOTAL LAND  ----

-----manger----------------------

select max(salary) as max_salary_for_Manger from Manger

-------------------------------------------
------------docks------------
select distinct name from docks  ------uniqe of docks -----------

select sum(Arrow+carat+Arcre) sum_of_area,name from docks
group by name -------- sum of totla area in Eac of docks ------------------
---------------------------------
---------------crops---------
select distinct name  ,timing from crops -------UNIQE CROPS --------------
select name , sum(Arrow+carat+Arcre) sumofarea from crops
where timing ='Summer'
group by name  ---------total area by crops in only timiming --------
----------------------------------------------------
------------------------------------------JOIN---------------------------------------
-----------------------------Agricultur_Supplies ag join Association--------------

select Ass.name,ag.name,ag.Quantity,Governorate,(Ass.Arrow+ Ass.carat+ Ass.Arcre) as  total_area  from Agricultur_Supplies ag join Association Ass on Ass.id=ag.id_Association

--------------------- Association Ass join Manger M----------------------- 
select Governorate,Ass.name,M.name,salary from  Association Ass join Manger M on M.id=Ass.id_manger 
------------------- Manger M join superviser s-------------------
select M.name ,s.name ,s.salary as salary_by_supervisor from Manger M join superviser s on M.id=s.id_manger
------------------- from Owner O  JOIN Land l---------------------
select O.name,O.Numofbices,O.piecenum,O.Objectv_owner,(l.Arrow+l.carat+l.Arcre) as total_area from Owner O  JOIN Land l 
on O.id=l.id_owner
------------------------from Land l join docks d on d.code=l.id_docks join superviser s on s.id=d.code------------
select d.name as name_of_dockes ,s.name as name_of_supervisoer,(l.Arrow+l.carat+l.Arcre) as total_area_in_dockes from Land l join docks d
on d.code=l.id_docks 
join superviser s on s.id=d.code
----------------------from Land l join crops c------------------------
SELECT name ,timing,(l.Arrow+l.carat+l.Arcre) as total_area_in_growen from Land l join crops c on c.id=l.id_crops
-------------------------------------FINAL JOIN----------------------------------

select  Ass.name,M.name as manger_name,M.salary as salary_by_Manger,s.name as supvisoer_name,s.salary as salary_by_supervisioer,ag.name ,
d.name as name_of_dockes,(d.Arrow+d.carat+d.Arcre) as total_area_in_dockes,O.name as Owner_name,
O.Numofbices,O.Objectv_owner,(l.Arrow+l.carat+l.Arcre) as total_area_by_owner,c.name as crops_name,c.timing,
Quantity,Governorate,(Ass.Arrow+Ass.Arcre+Ass.carat) as total_area_for_Each_association from Agricultur_Supplies ag join Association Ass
on Ass.id=ag.id_Association
join Manger M 
on M.id=Ass.id_manger
join superviser s
on M.id=s.id_manger
join docks d
on s.id=d.id_superviser
join Land l
on d.code=l.id_docks
join Owner O
on o.id=l.id_owner
join crops c
on l.id_crops=c.id


select ASS.name,ASS.Governorate,(ASS.Arcre+ASS.Arrow+ASS.carat)AS TOALT_AREA_IN_ASS,M.name from Association ASS join Manger M 
on ASS.id=M.id
and ASS.Governorate='Bani Sweif'
--------------------------------------------------------------
select d.name as dockes_name,(d.Arcre+d.Arrow+d.carat) as total_area,s.name from docks d join superviser s
on d.id_superviser=s.id

select  Ass.name,M.name as manger_name,M.salary as salary_by_Manger,s.name as supvisoer_name,s.salary as salary_by_supervisioer,ag.name ,
d.name as name_of_dockes,(d.Arrow+d.carat+d.Arcre) as total_area_in_dockes,O.name as Owner_name,
O.Numofbices,O.Objectv_owner,(l.Arrow+l.carat+l.Arcre) as total_area_by_owner,c.name as crops_name,c.timing,
Quantity,Governorate,(Ass.Arrow+Ass.Arcre+Ass.carat) as total_area_for_Each_association from Agricultur_Supplies ag join Association Ass
on Ass.id=ag.id_Association
join Manger M 
on M.id=Ass.id_manger
join superviser s
on M.id=s.id_manger
join docks d
on s.id=d.id_superviser
join Land l
on d.code=l.id_docks
FULL OUTER join Owner O
on o.id=l.id_owner
join crops c
on l.id_crops=c.id
-----------------------------------
select ASS.name,ASS.Governorate,(ASS.Arcre+ASS.Arrow+ASS.carat)AS TOALT_AREA_IN_ASS,M.name from Association ASS join Manger M 
on ASS.id=M.id
and ASS.Governorate='Bani Sweif'
--------------------------------------------------------------
select d.name as dockes_name,(d.Arcre+d.Arrow+d.carat) as total_area,s.name from docks d join superviser s
on d.id_superviser=s.id
-----------------------------------------------
select  Ass.name as name_Association,M.name as manger_name,M.salary as salary_by_Manger,s.name as supvisoer_name,s.salary as salary_by_supervisioer,ag.name as supplies_agiculur ,
d.name as name_of_dockes,(d.Arrow+d.carat+d.Arcre) as total_area_in_dockes,O.name as Owner_name,
O.Numofbices,O.Objectv_owner,(l.Arrow+l.carat+l.Arcre) as total_area_by_owner,c.name as crops_name,c.timing,
Quantity,Governorate,(Ass.Arrow+Ass.Arcre+Ass.carat) as total_area_for_Each_association from Agricultur_Supplies ag RIGHT OUTER  join Association Ass
on Ass.id=ag.id_Association
 left outer join Manger M 
on M.id=Ass.id_manger
join superviser s
on M.id=s.id_manger
LEFT  OUTER join docks d
on s.id=d.id_superviser
join Land l
on d.code=l.id_docks
RIGHT OUTER join Owner O
on o.id=l.id_owner
join crops c
on l.id_crops=c.id
-----------------------------------------
SELECT  ass.Governorate,ass.center,Quantity FROM Association ass join Agricultur_Supplies ag ----------------------- the largest Governorate&center by Quantity 
on ass.id=ag.id_Association
and Quantity >1500
------------------------------------------------
select * from Manger
SELECT salary,name from manger 
where salary between 5000 and  8000 ;




