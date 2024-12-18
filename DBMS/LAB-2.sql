
/*----------------------------------------------------LAB-2-PART-A-------------------------------------------------------------------*/


create table EMPLOYEE (EmpNo int,EmpName varchar(50),JainingDate datetime,Salary decimal(8,2),City varchar(50))

insert into EMPLOYEE values (101,'Keyur','05-JAN-2002',12000,'Rajkot')
insert into EMPLOYEE values (102,'Hardik','15-FEB-2004',14000,'Ahmedabad')
insert into EMPLOYEE values (103,'Kajal','14-MAR-2006',15000,'Baroda')
insert into EMPLOYEE values (104,'Bhoomi','23-JUN-2005',12500,'Ahmedabad')
insert into EMPLOYEE values (102,'Harmit','15-FEB-2004',14000,'Rajkot')

select * from EMPLOYEE

delete from EMPLOYEE

/*-------------------------------------------------------------------------------------------------------------------------*/

/*Q-1*/
select EmpName from EMPLOYEE where Salary > 13000 and City in ('Rajkot','Baroda')

/*Q-2*/
select EmpName from EMPLOYEE order by EmpName

/*Q-3*/
select distinct City from EMPLOYEE

/*Q-4*/
update EMPLOYEE set City=null where EmpName in ('Keyur','Bhoomi')

/*Q-5*/
select EmpName from EMPLOYEE where City is null

/*Q-6*/
delete from EMPLOYEE where Salary >= 14000

/*Q-7*/
delete from EMPLOYEE where City = 'Rajkot'

/*Q-8*/
delete from EMPLOYEE where JainingDate > '1-JAN-2007'

/*Q-9*/
truncate table EMPlOYEE

/*Q-10*/
drop table EMPLOYEE

/*Q-11*/
truncate table DEPOSIT 

/*Q-12*/
drop table DEPOSIT

/*Q-13*/
drop table BRANCH

/*Q-14*/
drop table CUSTOMERS

/*Q-15*/
drop table BORROW


/*------------------------------------------LAB-2-PART-B-------------------------------------------------------------------*/

create table ACCOUNT (ACTNO int, CNAME varchar(50), BNAME varchar(50), AMOUNT decimal(8,2), ADATE datetime)

insert into ACCOUNT values (101,'ANIL', 'VRCE',1000.00,'1-MAR-1995')
insert into ACCOUNT values (102,'SUNIL', 'AJNI',5000.00,'4-JAN-1996')
insert into ACCOUNT values (103,'MEHUL', 'KAROLBAGH',3500.00,'17-NOV-1995')
insert into ACCOUNT values (104,'MADHURI', 'CHANDI',1200.00,'17-DEC-1995')
insert into ACCOUNT values (105,'PRAMOD', 'M.G. ROAD',3000.00,'27-MAR-1996')
insert into ACCOUNT values (106,'SANDIP', 'ANDHERI',2000.00,'31-MAR-1996')
insert into ACCOUNT values (107,'SHIVANI', 'VIRAR',1000.00,'5-SEP-1995')
insert into ACCOUNT values (108,'KRANTI', 'NEHRU PLACE',5000.00,'3-JUL-1995')
insert into ACCOUNT values (109,'MINU', 'POWAI',7000.00,'10-AUG-1995')

select * from ACCOUNT

/*------------------------------------------------------------------------------------------------------------------*/

/*Q-1*/
select distinct BNAME from ACCOUNT 

/*Q-2*/
select CNAME,AMOUNT from ACCOUNT order by AMOUNT asc , CNAME desc

/*Q-3*/
update ACCOUNT set BNAME=null where CNAME in ('ANIL','SHIVANI')

/*Q-4*/
select CNAME from ACCOUNT where BNAME is null

/*Q-5*/
select  * from ACCOUNT where AMOUNT >= 4000

/*Q-6*/
delete from ACCOUNT where BNAME = 'CHANDI'

/*Q-7*/
delete from ACCOUNT where ADATE > '1-OCT-1995'

/*Q-8*/
truncate table ACCOUNT

/*Q-9*/
drop table ACCOUNT


/*--------------------------------------------LAB-2-PART-C-----------------------------------------------------------------*/

create table ACCOUNT (ACTNO int, CNAME varchar(50), BNAME varchar(50), AMOUNT decimal(8,2), ADATE datetime)

insert into ACCOUNT values (101,'ANIL', 'VRCE',1000.00,'1-MAR-1995')
insert into ACCOUNT values (102,'SUNIL', 'AJNI',5000.00,'4-JAN-1996')
insert into ACCOUNT values (103,'MEHUL', 'KAROLBAGH',3500.00,'17-NOV-1995')
insert into ACCOUNT values (104,'MADHURI', 'CHANDI',1200.00,'17-DEC-1995')
insert into ACCOUNT values (105,'PRAMOD', 'M.G. ROAD',3000.00,'27-MAR-1996')
insert into ACCOUNT values (106,'SANDIP', 'ANDHERI',2000.00,'31-MAR-1996')
insert into ACCOUNT values (107,'SHIVANI', 'VIRAR',1000.00,'5-SEP-1995')
insert into ACCOUNT values (108,'KRANTI', 'NEHRU PLACE',5000.00,'3-JUL-1995')
insert into ACCOUNT values (109,'MINU', 'POWAI',7000.00,'10-AUG-1995')

select * from ACCOUNT

/*------------------------------------------------------------------------------------------------------------------*/

--1. Display the Cname whose Bname is either AJNI or CHANDI and amount is greater than 3000 and sort the result in ascending order by their amount and if amount is same then in descending order by cname.
select CNAME from ACCOUNT where BNAME in('AJNI','CHANDI') and AMOUNT > 3000 order by AMOUNT asc , CNAME desc

--2. Retrieve top 3 unique BNAME and sort them in ascending order on BNAME.
select distinct top 3 BNAME from ACCOUNT order by BNAME

--3. Display the Cname whose ACTNO is greater than 103 and sort the result in ascending order by their amount and if amount is same then in descending order by cname.
select CNAME,AMOUNT from ACCOUNT where ACTNO > 103 order by AMOUNT asc , CNAME desc

--4. Update the BNAME of Anil, Mehul and Shivani to NULL.
update ACCOUNT set BNAME=null where CNAME in ('ANIL','MEHUL','SHIVANI')

--5. Display the Cname of customers whose Bname is NULL.
select CNAME from ACCOUNT where BNAME is null

--6. Update the amount of Anil to 5000.
update ACCOUNT set AMOUNT=5000 where CNAME = 'ANIL'

--7. Update amount of actno 109 to NULL.
update ACCOUNT set AMOUNT=null where ACTNO = 109

--8. Retrieve all the records of account table as per their bname in descending order.
select * from ACCOUNT order by BNAME desc

--9. Delete all the records of Account table. (Use Truncate)
truncate table ACCOUNT

--10. Remove Account table. (Use Drop)
drop table ACCOUNT