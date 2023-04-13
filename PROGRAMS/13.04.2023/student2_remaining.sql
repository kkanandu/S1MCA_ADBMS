create database student2;
use student2;
create table details(ID int,NAME varchar(50),ADDRESS varchar(40),MATHS int,PHYSICS int,CS int,TOTAL int);
insert into details values(001,"MUHSINA","MALAPPURAM",80,90,99,289);
insert into details values(002,"SHAMEER","KOZHIKODE",60,90,99,269);
insert into details values(003,"VARUN","TRISSUR",70,65,70,205);
insert into details values(004,"MOOSA","MALAPPURAM",50,90,49,189);
insert into details values(005,"SARANG","KOLLAM",30,10,55,95);
insert into details values(006,"REEMA","KOZHIKODE",80,90,99,289);
insert into details values(007,"ADWAITH","KOZIKODE",50,90,78,218);
insert into details values(008,"NISHA","MALAPPURAM",80,90,70,240);
insert into details values(009,"MARIYA","KANNUR",90,90,71,251);
insert into details values(010,"AKASH","MALAPPURAM",60,60,72,192);

select * from details;
update details set TOTAL=250 where NAME = "VARUN";

delete from details where NAME="SARANG";

update details set NAME="ROBIN ZAKARIYA" where NAME="ADWAITH";

select TOTAL from details where NAME="REEMA" and TOTAL is not NULL;
select*from details where ADDRESS="KOZHIKODE" OR ADDRESS="MALAPPURAM";

alter table details ADD DEPARTMENT varchar(20);
select*from details;
update details SET DEPARTMENT="MCA" WHERE ID=1;
update details SET DEPARTMENT="MECH" WHERE ID=2;
update details SET DEPARTMENT="CIVIL" WHERE ID=3;
update details SET DEPARTMENT="MCA" WHERE ID=4;
update details SET DEPARTMENT="ECE" WHERE ID=5;
update details SET DEPARTMENT="MCA" WHERE ID=6;
update details SET DEPARTMENT="EEE" WHERE ID=7;
update details SET DEPARTMENT="MCA" WHERE ID=8;
update details SET DEPARTMENT="EEE" WHERE ID=9;
update details SET DEPARTMENT="MCA" WHERE ID=10;

SELECT*FROM details;
select NAME,DEPARTMENT from details ORDER BY NAME,DEPARTMENT DESC;
insert into details values(011,"AKSHARA",NULL,60,60,72,192,"MCA");
SELECT * FROM details where ADDRESS is null;
select MAX(TOTAL) from details;
select MIN(MATHS) from details;
select AVG(CS) from details;
select SUM(PHYSICS) from details;
select DEPARTMENT from details where DEPARTMENT like "%A";
select NAME from details where NAME like "A%";

alter table details drop TOTAL;
alter table details ADD TOTAL int;
update details SET TOTAL="289" WHERE ID=1;
update details SET TOTAL="269" WHERE ID=2;
update details SET TOTAL="205" WHERE ID=3;
update details SET TOTAL="189" WHERE ID=4;
update details SET TOTAL="95" WHERE ID=5;
update details SET TOTAL="289" WHERE ID=6;
update details SET TOTAL="218" WHERE ID=7;
update details SET TOTAL="240" WHERE ID=8;
update details SET TOTAL="251" WHERE ID=9;
update details SET TOTAL="192" WHERE ID=10;
update details SET TOTAL="192" WHERE ID=11;

alter table details ADD AGE int;
update details SET AGE="21" WHERE ID=1;
update details SET AGE="22" WHERE ID=2;
update details SET AGE="25" WHERE ID=3;
update details SET AGE="23" WHERE ID=4;
update details SET AGE="21" WHERE ID=5;
update details SET AGE="23" WHERE ID=6;
update details SET AGE="26" WHERE ID=7;
update details SET AGE="24" WHERE ID=8;
update details SET AGE="25" WHERE ID=9;
update details SET AGE="22" WHERE ID=10;
update details SET AGE="21" WHERE ID=11;
alter table details ADD CONSTRAINT TEST CHECK (AGE>=20);
alter table details DROP CHECK TEST;
