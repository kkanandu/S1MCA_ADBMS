create database teacher;
use teacher;
drop table teaches;
create table teaches(fno char(5) not null primary key,fname varchar(15) not null,fdate date not null);


-- 1.Insert five records of your choice to the table teaches.
insert into teaches values("1","arjun","2020-5-1");
insert into teaches values("2","varun","2023-5-14");
insert into teaches values("3","arun","2023-7-23");
insert into teaches values("4","karun","2023-5-28");
 select * from teaches;
 
--  2.List all faculties who joined after 10-07-2023.-- 
select * from teaches where fdate > '2023-7-10';


CREATE TABLE subjects (subject_id INT,subject_name VARCHAR(25) NOT NULL,start_date DATE NOT NULL,end_date DATE NOT NULL,faculty_id char(5) primary key,foreign key(faculty_id) references teaches(fno));



INSERT INTO subjects (subject_id, subject_name, start_date, end_date,faculty_id)VALUES(1, 'Mathematics', '2020-04-05', '2020-04-25', '1');
INSERT INTO subjects (subject_id, subject_name, start_date, end_date,faculty_id)VALUES(2, 'History', '2020-04-10', '2020-04-30', '2');
INSERT INTO subjects (subject_id, subject_name, start_date, end_date,faculty_id)VALUES(3, 'Physics', '2020-04-15', '2020-05-05', '3');
INSERT INTO subjects (subject_id, subject_name, start_date, end_date,faculty_id)VALUES(4, 'Computer Science', '2020-04-20', '2020-05-10', '4');


-- 3. List all subjects starting after 01-04-2020 and ending before 31-04-2020.
select *from subjects where start_date > '2020-04-05' AND end_date < '2023-05-10';


-- List subjects along with the faculty members who teach them
SELECT subjects.subject_name, teaches.fname AS faculty_name
FROM subjects 
INNER JOIN teaches ON subjects.faculty_id = teaches.fno;




-- 4. Develop a procedure named details that displays all faculty details .-- 
delimiter //
create procedure details()
begin
select *from teaches;
end;
//
call details();