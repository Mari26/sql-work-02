create database sweet_shop;
use sweet_shop;
drop table drinks;
drop table provider_sno;
create table drinks(
drinkID int not null,
drinkname varchar(255) not null,
primary key (drinkID),
drinkcode int ,
price int,
productiontime time,
productionperiod time
);
create table meats(
meatID int not null,
meatname varchar(255) not null,
primary key (meatID),
meatcode int ,
price int,
productiontime time,
productionperiod time
);
create table breads(
breadID int not null,
breadname varchar(255) not null,
primary key (breadID),
breadcode int ,
price int,
productiontime time,
productionperiod time
);
create table provider_sno(
provider_snoid int auto_increment primary key,
providername varchar(255) not null,
drinkid int,
FOREIGN KEY (drinkid) REFERENCES drinks(drinkid)
);
select * from provider_sno;
select * from drinks;
drop table provider_koda;
create table provider_koda(
provider_kodaid int auto_increment primary key,
providername varchar(255) not null,
meatid int,
CONSTRAINT FK_meatid FOREIGN KEY (meatid) REFERENCES meats(meatid)
);
select * from provider_koda;
select * from meats;
create table consultant(
consultantid int auto_increment primary key,
consultantname varchar(255) not null
);
create table consultant_drink(
consultant_drinkid int auto_increment primary key,
consultantid int,
drinkid int,
FOREIGN KEY (consultantid) REFERENCES consultant(consultantid),
FOREIGN KEY (drinkid) REFERENCES drinks(drinkid)
);
create table consultant_meat(
consultant_meatid int auto_increment primary key,
consultantid int,
meatid int,
FOREIGN KEY (consultantid) REFERENCES consultant(consultantid),
FOREIGN KEY (meatid) REFERENCES meats(meatid)
)