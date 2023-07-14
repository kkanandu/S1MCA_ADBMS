create database student130;
use student130;
create table details(id int not null,name varchar(30) not null,address varchar(20),mathematics int,physics int,computer_science int,total_mark int,Email varchar(20) not null unique);
insert into details value(321,"varun","paruvayal",150,150,150,450,"varun@gmail.com");
insert into details value(322,"sarang","koduvally",149,139,109,397,"abc@gmail.com");
insert into details value(323,"adwaith","mavoor",100,101,110,311,"abc@gmail.com");
select * from details;