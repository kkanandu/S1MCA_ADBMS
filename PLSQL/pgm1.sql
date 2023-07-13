create database db1;
use db1;
create table details9(id int primary key,name varchar(20),address varchar(30),phone int);

create table stud1(s_id int auto_increment key,name varchar(20));
select*from stud1;
insert into stud1 values(1,'anu');
select * from stud1;
insert into stud1 values(2,'muhsina');



DELIMITER //
CREATE PROCEDURE getAllDetails()
BEGIN 
select*from stud1;
END //
DELIMITER ;

CALL getAllDetails();



CREATE TABLE customers7(sustomer_id int NOT NULL,customer_name varchar(50)NOT NULL ,city varchar(50));
create table cust(c_id int primary key ,c_name varchar(20),city varchar(20));
insert into cust values(1,'mariya','kannur');
insert into cust values(2,'muhsina','malappuram');
insert into cust values(3,'nisha','eranakulam');
insert into cust values(4,'shibla','palakkad');
insert into cust values(5,'swathi','kozhikkode');
select * from cust;


DELIMITER //
CREATE PROCEDURE getAllDetails9()
BEGIN
select * from cust;
END //
DELIMITER ;
 CALL getAllDetails9();