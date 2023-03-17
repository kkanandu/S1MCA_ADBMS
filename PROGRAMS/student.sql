create database studentss;
use studentss;
create table s1(rollnumber int,name varchar(10),address varchar(30),subject varchar(15),total_mark int);
insert into s1 values(1,'anu','kuttikattor','physics',80);
insert into s1 values(2,'anandu','ummalathur','php',50);
insert into s1 values(3,'athul','palazhi','c++',72);
insert into s1 values(4,'ammu','medical college','cs',98);
insert into s1 values(5,'arjun','kozhikode','mathematics',360);
select * from s1;
select rollnumber,name from s1;
select * from s1 where address='kozhikode';
select * from s1 where(total_mark>=350);




