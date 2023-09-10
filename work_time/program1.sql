create database cust;
use cust;

create table customer(Custid varchar(5) primary key, Custname varchar(10),Addr varchar(10),phno varchar(10),pan_no varchar(15) unique);
create table Loan (Loanid int primary key, Amount decimal(10,2), Interest decimal(5,2),Custid varchar(5), foreign key(Custid)references customer(Custid));
insert into customer values("co1","arjun","kozhikode","9756465342","2gjh662");
insert into customer values("co2","varun","kollam","9756465342","2te552");
insert into customer values("co3","arun","kozhikode","9756465342","6gjh66h");
insert into customer values("co4","karun","kozhikode","9756465342","7gjh6d2");
insert into customer values("co5","nima","kozhikode","9756465342","8ijh664");
insert into customer values("co6","civan","kannur","6756465342","8i5h664");
 
-- 1.Create the above mentioned tables and populate the
-- tables Note: Read all questions and populate values
-- accordingly.
insert into Loan values(1,1000.00,5.0,"co1");
insert into Loan values(2,500.00,6.0,"co2");
insert into Loan values(3,700.00,4.0,"co3");
select * from Loan;
select * from customer;
insert into Loan values(4,15000.00,9.0,"co4");
insert into Loan values(5,1000.00,5.0,"co5");
insert into Loan values(6,1000.00,7.0,"co6");

-- 2.Identify the primary key and foreign key-- 
desc Loan;
desc customer;

-- 3.Include the constraint on Custid that it starts with letter ‘C’-
alter table customer add constraint test check(Custid like '%c');
alter table customer drop constraint test;

 
 -- 4. Display the customer id, name and account balance.Sort the output using custid .
SELECT c.Custid, c.Custname,SUM(loan.Amount) AS account_bal
FROM customer c
LEFT JOIN Loan ON c.Custid=Loan.Custid
GROUP BY c.Custid, c.Custname 
ORDER BY c.Custid desc;

-- 5. Display the accounts of custids ‘C01’,’C02’,’C03’
select customer.Custid,customer.Custname,Loan.Amount as account_balance from customer
left join Loan on Loan.Custid=customer.Custid
where customer.Custid in('co1','co2','co3')
group by customer.Custid,customer.Custname,Loan.Amount;


-- 6.Display the custid who has account balance larger than other customers-- 
select customer.Custid,customer.Custname,sum(Loan.Amount) as account_balance  
from Customer
left join Loan on customer.Custid=Loan.Custid
group by customer.Custid,customer.Custname
order by account_balance desc
limit 1;

-- 7. Create a view that keeps track of customer id, loanamount and account balance .
create view test3 as select customer.Custid,Loan.Amount,sum(Loan.Amount*(1+(loan.Interest/100))) as account_balance
from customer
left join Loan on customer.Custid=Loan.Custid
group by customer.Custid,customer.Custname,Loan.Amount;
select * from test3;

-- 8.Develop a procedure named Customer_Loan that displays all the loan details .
delimiter //
create procedure customer_loan()
begin
select * from loan ;
END;
//
CALL customer_loan();