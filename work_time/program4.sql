create database boat;
use boat;
create table sailor(sid int primary key,name varchar(15),dob date,gender char(1));
create table Boat(bid int primary key,btype varchar(1),bname varchar(45),color varchar(5),foreign key(bid) references sailor(sid));
create table sails(sid int,bid int,dot date,shift char(2),foreign key(sid) references sailor(sid),foreign key(bid) references boat(bid)); 

-- 1.Identify the primary keys and foreign keys .
desc sailor;
desc boat;
desc sails;


-- 2.Create the above mentioned tables and populate thetables . Note: Read all questions and populate values accordingly.

INSERT INTO SAILOR (SID, NAME, DOB, GENDER) VALUES
  (1, 'John', '1990-05-15', 'M'),
  (2, 'Mary', '1988-07-20', 'F'),
  (3, 'David', '1995-03-10', 'M');
  select*from sailor;
  
INSERT INTO BOAT (BID, BTYPE, BNAME, COLOR) VALUES
  (1, 'D', 'Deluxe Boat 1', 'Blue'),
  (2, 'S', 'Super Deluxe Boat 2', 'Red'),
  (3, 'S', 'Super Deluxe Boat 3', 'Green');
  select*from boat;
  
INSERT INTO SAILS (SID, BID, DOT, SHIFT) VALUES
  (1, 1, '2023-09-10', 'FN'),
  (2, 2, '2023-09-11', 'AN'),
  (3, 3, '2023-09-10', 'FN');
    select*from sails;
    
    
-- 3. List the details of boats whose type is Super Deluxe and Color is Red.
select*from boat where color="red";
SELECT * FROM BOAT WHERE BTYPE = 'S' AND COLOR = 'Red';


select SAILOR.SID,SAILOR.NAME,SAILOR.DOB,SAILOR.GENDER,Boat.BID,Boat.BTYPE,Boat.BNAME,Boat.COLOR,SAILS.DOT,SAILS.SHIFT FROM SAILS
JOIN
SAILOR ON SAILOR.SID=SAILS.SID
LEFT JOIN
BOAT ON BOAT.BID=SAILS.SID
LIMIT 0, 1000;


-- 4.Develop a view that will keep track of sailor id, sailorname, date of trip, boat id, boat type, boat name and shift.
CREATE VIEW TEST5 AS SELECT SAILOR.SID,SAILOR.NAME AS SAILOR_NAME,SAILS.DOT AS DATE_OF_TRIP,BOAT.BID,BOAT.BTYPE,BOAT.BNAME,SAILS.SHIFT FROM SAILOR
INNER JOIN SAILS ON SAILS.SID=SAILOR.SID
INNER JOIN BOAT ON BOAT.BID=SAILOR.SID;
 SELECT *FROM TEST5 ;


-- 5.Create a PL / SQL stored function that accepts SID and returns the name of sailor .
DELIMITER //
CREATE FUNCTION GetSailorName(SailorID INT) RETURNS VARCHAR(50) DETERMINISTIC
BEGIN
  DECLARE SailorName VARCHAR(50);
  -- Your SQL logic here to fetch the sailor's name based on SailorID
  RETURN SailorName;
END;
//
DELIMITER ;
SELECT GetSailorName(1); -- Replace 1 with the desired SailorID



