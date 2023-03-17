create database students;
show databases
use students
show tables;
create table student_detail(id int, name varchar(15),address varchar(20),subjects varchar(10),total_mark int); 
insert into student_detail values(1,'varun','cholayil','maths',78);
insert into student_detail values(2,'swathi','thayyil','physics',88);
insert into student_detail values(3,'nisha','kozhikode','cs',75);
insert into student_detail values(4,'swathi','thayyil','physics',88);
insert into student_detail values(5,'reema','puthan veetil','cs',NULL);
insert into student_detail values(6,'akash bhaskar','archana','physics',90);
insert into student_detail values(7,'sarang','manath','maths',360);
insert into student_detail values(8,'adwaith','tharakath','maths',388);
select * from student_detail;
update student_detail set total_mark=250  where name='varun' ;
delete from student_detail where name='sarang';
update student_detail set name="Robin"  where name='adwaith' ;
select total_mark,name from student_detail where total_mark is null;