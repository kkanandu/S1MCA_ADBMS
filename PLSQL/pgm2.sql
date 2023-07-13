use db1;


DELIMITER //
CREATE PROCEDURE example(a int)
BEGIN
declare x int;
set x=a;
select x as 'result';
END //
DELIMITER ;


call example(10);