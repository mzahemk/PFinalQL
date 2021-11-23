create Database if not exists APeintureIndustriel;
use APeintureIndustriel;

create table if not exists Employe(
numEmploye int not null primary key,
motPasseEmploye varchar(12) not null,
nomEmploye varchar(30) not null,
prenomEmploye varchar(30) not null,
courrielEmploye varchar(40) not null,
membreQc int not null);




insert into Employe values
(100, 'Pa$$word', 'Lacroix' , 'Simon', 'SLacroix@PIndustriel.ca', 1),
(101, 'copypaste', 'Maccan' , 'Jennifer', 'JMaccan@PIndustriel.ca', 1),
(102, 'ibizza', 'Lavoie', 'Luc', 'LLavoie@PIndustriel.ca', 1),
(103, 'HOLA!', 'Ramirez', 'Angelica', 'ARamirez@PIndustriel.ca',1),
(104, 'Rimini','Arsenault', 'Rodrigue', 'RArsenault@PIndustriel.ca',1),
(105, 'ApplePie','Plante', 'Steve', 'SPlante@PIndustriel.ca',0);
drop table Employe;
select * from Employe;

create table if not exists Client(
numClient int not null primary key,
nomClient varchar(40) not null);

describe Client;
insert into Client values
(1000,'Marlene Tremblay'),
(1001,'Louise Poisson'),
(1002,'Karine Bolduc'),
(1003,'Roger Lavoie'),
(1004,'Robert Seguin'),
(1005,'Yves Plante'),
(1006,'Francis Laberge'),
(1007,'Sebastien Dumont'),
(1008,'Yvon Lemieux'),
(1009,'Philippe Lopez');

select * from Client;

create table if not exists Produit(
numProduit int not null primary key,
description text(60) not null,
fournisseur varchar(30) not null);

describe Produit;
insert into Produit values
(10001, 'produit Betonel', 'Betonel'),
(10002, 'produit Behr','Behr'),
(10003, 'produit Cico','Cico');


drop table Produit;
select * from Produit;

create table Formule(
numFormule int not null primary key,
dateCreation date not null,
numEmploye int not null,
numClient int not null,
foreign key (numEmploye) references Employe(numEmploye),
foreign key (numClient) references Client(numClient));
drop table Formule;
describe Formule;
drop table formule;
insert into Formule values
(2000,'2016-09-17',100,1000),
(2001,'2015-08-09',102,1001),
(2002,'2016-10-11',103,1002),
(2003,'2018-07-08',104,1003),
(2004,'2014-10-05',105,1004),
(2005,'2019-04-25',100,1005),
(2006,'2011-09-06',101,1006),
(2007,'2012-12-09',103,1007),
(2008,'2010-09-02',105,1008),
(2009,'2011-02-24',102,1009);

select * from formule;
drop table formule;
drop table ingredient;

create table if not exists Ingredient(
numFormule int not null ,
numProduit int not null ,
quantiteProduitBleu float(3.2),
quantiteProduitRouge float(3.2),
quantiteProduitJaune float(3.2),
primary key (numFormule,numProduit),
foreign key(numFormule) references Formule(numFormule),
foreign key (numProduit) references Produit(numProduit));
drop table Ingredient;
-- (rouge/bleu/jaune/blanc)
describe Ingredient;
insert into Ingredient values
(2000,10001,0.85,0.05,0.1),
(2001,10002,0.35,0.25,0.4),
(2002,10003,0.5,0.25,0.25),
(2003,10001,0.6,0.05,0.35),
(2004,10002,0.5,0.05,0.45),
(2005,10003,0.7,0.15,0.15),
(2006,10001,0.10,0.3,0.6),
(2007,10002,0.45,0.15,0.4),
(2008,10003,0.1,0.3,0.6),
(2009,10001,0.2,0.4,0.4);
select * from Ingredient;
drop table ingredient;

create table if not exists Historique_Cuvee(
numCuvee int not null primary key,
dateProduction date not null,
numFormule int not null,
foreign key(numFormule) references Formule(numFormule));
describe Historique_Cuvee;

insert into Historique_Cuvee values
(3000,'2016-09-17',2000)

(2000,'2016-09-17',100,1000),
(2001,'2015-08-09',102,1001),
(2002,'2016-10-11',103,1002),
(2003,'2018-07-08',104,1003),
(2004,'2014-10-05',105,1004),
(2005,'2019-04-25',100,1005),
(2006,'2011-09-06',101,1006),
(2007,'2012-12-09',103,1007),
(2008,'2010-09-02',105,1008),
(2009,'2011-02-24',102,1009);



