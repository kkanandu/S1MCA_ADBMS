create database student140;
use student140;
create table Department(Dept_ID_pk int not null,Dept_name varchar(20),Location_ID int);
insert into Department values(321,"MCA",1);
insert into Department values(322,"EEE",2);
insert into Department values(323,"CSE",3);
Alter Table Department add Primary Key(Dept_ID_pk);
describe department
