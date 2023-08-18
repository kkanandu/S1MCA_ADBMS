CREATE DATABASE phonebooks;
use phonebooks;
create table phonebook(pname varchar(15),mobno varchar(12));
create table del_phonebook(pname varchar(15),mobno VARCHAR(12),modify_date date);
insert into phonebook values('sam','9823892352');
insert into phonebook values('ram','9756392412');
insert into phonebook values('janu','9743638762');
insert into phonebook values('anu','9057281643');
insert into phonebook values('manu','8956239201');
select * from phonebook;

DROP DATABASE phonebooks;

DELIMITER //
CREATE TRIGGER save_old_mob AFTER DELETE ON phonebook FOR EACH ROW 
BEGIN
INSERT INTO del_phonebook (pname,mobno,modify_date) values(OLD.Pname ,OLD.mobno,sysdate());
END;
//


desc PHONEBOOK;

DESC del_phonebook;
delete from phonebook where pname='anu';
select * from phonebook;
select * from del_phonebook;



