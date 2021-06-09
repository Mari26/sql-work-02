create database shop_1;
use shop_1;
create table products(
ID int not null,
name varchar(255) not null,
primary key (ID),
code int ,
price int,
productiontime time,
productionperiod time,
providerID int,
typeID int,
FOREIGN KEY (providerID) REFERENCES providers(providerID),
FOREIGN KEY (typeID) REFERENCES typess(typeID)
);
create table providers(
providerID int not null,
name varchar(255) not null,
primary key (providerID)
);
create table typess(
typeID int not null,
name varchar(255) ,
primary key (typeID)
);
drop table consultants;
create table consultants(
consultantID int not null,
name varchar(255) ,
primary key (consultantID)
);
create table consultanttypes(
consultant_typeID int not null,
name varchar(255) ,
primary key (consultant_typeID),
consultantID int,
typeID int,
FOREIGN KEY (consultantID) REFERENCES consultants(consultantID),
FOREIGN KEY (typeID) REFERENCES typess(typeID)
);