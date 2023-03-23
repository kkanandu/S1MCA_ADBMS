create database customer;
use customer;
create table cust(customer_id int,first_name varchar(10),country varchar(15));
DELIMITER //
CREATE PROCEDURE us_custer()
BEGIN
SELECT customer_id,first_name
FROM cust
WHERE country ='india';
END //
DELIMITER ;


insert into cust values(1,'anu','usa');
insert into cust values(2,'anandu','uk');
insert into cust values(3,'athul','india');
CALL us_custer();