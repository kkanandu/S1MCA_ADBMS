use student;
create table section(s_id int,s_name varchar(20),strength int);
insert into section values(1,"CS","20");
insert into section values(2,"Portal","45");
insert into section values(3,"geeks","60");
DELIMITER //
create function totalStrength()
returns int
DETERMINISTIC
begin
declare total int;
set total =0;
select sum(strength)into total from section;
return total;
END;
//
DELIMITER ;
select totalStrength();