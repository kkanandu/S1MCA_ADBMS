CREATE DATABASE TT;
USE TT;
DELIMITER //
CREATE PROCEDURE GHN()
BEGIN
declare a int;
declare b int;
declare c int;
set a=20;
set b=10;
set c=a+b;
select a,b,c;
END //

DELIMITER ;
call GHN();