
use student150;
create table Department(Dept_ID_pk int not null unique,Dept_name varchar(20),Location_ID int);
insert into Department values(321,"MCA",1);
insert into Department values(322,"EEE",2);
insert into Department values(323,"CSE",3);
Alter Table Department add Primary Key(Dept_ID_pk);
select * from Department;
alter table Department add column id int;
ALTER TABLE Department
ADD FOREIGN KEY (id) REFERENCES details(id);
ALTER TABLE Department
ADD CONSTRAINT FK
FOREIGN KEY (id) REFERENCES Persons(id);
describe Department
