create database student120;
use student120;
create table details(id int not null,name varchar(30) not null,address varchar(20),mathematics int,physics int,computer_science int,total_mark int);
insert into details value(321,"varun","paruvayal",150,150,150,450);
insert into details value(322,"sarang","koduvally",149,139,109,397);
insert into details value(323,"adwaith","mavoor",100,101,110,311);
insert into details value(null,"adwaith","mavoor",100,101,110,311);
select * from details;