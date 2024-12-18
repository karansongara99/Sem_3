
/*---------------------------------------------LAB-1-PART-A-------------------------------------------------------------------------*/


create table DEPOSIT (ACTNO int, CNAME varchar(50), BNAME varchar(50), AMOUNT decimal(8,2), ADATE datetime)

create table BRANCH (BNAME varchar(50), CITY varchar(50))

create table CUSTOMERS (CNAME varchar(50), CITY varchar(50))

create table BORROW (LOANNO int, CNAME varchar(50), BNAME varchar(50), AMOUNT decimal(8,2))


/*------------------------------------------------------------------------------------------------------------------------*/


insert into DEPOSIT values (101,'ANIL', 'VRCE',1000.00,'1-MAR-1995')
insert into DEPOSIT values (102,'SUNIL', 'AJNI',5000.00,'4-JAN-1996')
insert into DEPOSIT values (103,'MEHUL', 'KAROLBAGH',3500.00,'17-NOV-1995')
insert into DEPOSIT values (104,'MADHURI', 'CHANDI',1200.00,'17-DEC-1995')
insert into DEPOSIT values (105,'PRAMOD', 'M.G. ROAD',3000.00,'27-MAR-1996')
insert into DEPOSIT values (106,'SANDIP', 'ANDHERI',2000.00,'31-MAR-1996')
insert into DEPOSIT values (107,'SHIVANI', 'VIRAR',1000.00,'5-SEP-1995')
insert into DEPOSIT values (108,'KRANTI', 'NEHRU PLACE',5000.00,'3-JUL-1995')
insert into DEPOSIT values (109,'MINU', 'NEHRU PLACE',7000.00,'10-AUG-1995')


delete from DEPOSIT

select * from DEPOSIT


insert into BRANCH values ('VRCE','NAGPUR')
insert into BRANCH values ('AJNI','NAGPUR')
insert into BRANCH values ('KAROLBAGH','DELHI')
insert into BRANCH values ('CHANDI','DELHI')
insert into BRANCH values ('DHARAMPETH','NAGPUR')
insert into BRANCH values ('M.G. ROAD','BANGLORE')
insert into BRANCH values ('ANDHERI','BOMBAY')
insert into BRANCH values ('VIRAR','BOMBAY')
insert into BRANCH values ('NEHRU PLACE','DELHI')
insert into BRANCH values ('POWAI','BOMBAY')


DELETE FROM BRANCH

select * from BRANCH


insert into CUSTOMERS values ('ANIL','CALCUTTA')
insert into CUSTOMERS values ('SUNIL','DELHI')
insert into CUSTOMERS values ('MEHUL','BARODA')
insert into CUSTOMERS values ('MANDHAR','PATNA')
insert into CUSTOMERS values ('MADHURI','NAGPUR')
insert into CUSTOMERS values ('PRAMOD','NAGPUR')
insert into CUSTOMERS values ('SANDIP','SURAT')
insert into CUSTOMERS values ('SHIVANI','BOMBAY')
insert into CUSTOMERS values ('KRANTI','BOMBAY')
insert into CUSTOMERS values ('NAREN','BOMBAY')


delete from CUSTOMERS

select * from CUSTOMERS


insert into BORROW values (201,'ANIL','VRCE',1000.00)
insert into BORROW values (206,'MEHUL','AJNI',5000.00)
insert into BORROW values (311,'SUNIL','DHARAMPETH',3000.00)
insert into BORROW values (321,'MADHURI','ANDHERI',2000.00)
insert into BORROW values (375,'PRAMOD','VIRAR',8000.00)
insert into BORROW values (481,'KRANTI','NEHRU PLACE',3000.00)


delete  from BORROW 

select * from BORROW

/*-------------------------------------------------------------------------------------------------------------------------------------------------------------------------*/

/*Q-1*/
select * from DEPOSIT

/*Q-2*/
select * from BORROW

/*Q-3*/
select * from CUSTOMERS

/*Q-4*/
insert into BORROW values (550,'JAY','AJNI',NULL)

/*Q-5*/
select ACTNO,CNAME,AMOUNT from DEPOSIT

/*Q-6*/
select LOANNO,AMOUNT from BORROW

/*Q-7*/
select * from BORROW where BNAME = 'ANDHERI'

/*Q-8*/
select ACTNO,AMOUNT from DEPOSIT WHERE ACTNO=106

/*Q-9*/
select CNAME from BORROW where AMOUNT > 5000

/*Q-10*/
select CNAME from DEPOSIT where ADATE > '1-12-1996'

/*Q-11*/
select CNAME from DEPOSIT where ACTNO < 105

/*Q-12*/
select CNAME from CUSTOMERS where CITY in ('NAGPUR','DELHI')

/*Q-13*/
select CNAME,BNAME from DEPOSIT where AMOUNT > 4000 and ACTNO < 105

/*Q-14*/
select CNAME from BORROW where AMOUNT >= 3000 and AMOUNT <= 8000

select CNAME from BORROW where AMOUNT between 3000 and 8000

/*Q-15*/
select CNAME from BORROW where BNAME != 'ANDHERI'

/*Q-16*/
select ACTNO,CNAME,AMOUNT from DEPOSIT where BNAME in ('AJNI','KAROLBAGH','M.G. ROAD') and ACTNO < 104

/*Q-17*/
select top 5 * from CUSTOMERS

/*Q-18*/
select top 3 * from DEPOSIT where AMOUNT > 1000

/*Q-19*/
select top 5 LOANNO,CNAME from BORROW where BNAME != 'ANDHERI'

/*Q-20*/
select distinct CITY from CUSTOMERS

/*Q-21*/
select distinct BNAME from BRANCH

/*Q-22*/
select * from CUSTOMERS order by CITY

/*Q-23*/
select * from DEPOSIT order by AMOUNT desc

/*Q-24*/
update DEPOSIT set AMOUNT= 5000 where AMOUNT=3000

/*Q-25*/
update BORROW set BNAME='C.G. ROAD' where BNAME='AJNI'

/*Q-26*/
update DEPOSIT set ACTNO=111,AMOUNT=5000 where CNAME='SANDIP'

/*Q-27*/
update BORROW set AMOUNT=AMOUNT+(AMOUNT/100)*10  

/*Q-28*/
update DEPOSIT set AMOUNT=5000 where ACTNO between 103 and 107

/*Q-29*/
update BORROW set AMOUNT=null where LOANNO=321

/*Q-30*/
select CNAME from BORROW where AMOUNT is null


/*------------------------------------------------------------------------LAB-1-PART-B----------------------------------------------------------------------------------------------*/


create table STUDENT (RollNo int, Name varchar(50), Birthdate datetime, SPI decimal(8,2), City varchar(50), Backlog int, Branch varchar(50))

insert into STUDENT values(101, 'Keyur', '5-JAN-92', 8.5, 'Rajkot', 2, 'CE')
insert into STUDENT values(102, 'Hardik', '15-FEB-94', 9.0, 'Ahmedabad', 0, 'CE')
insert into STUDENT values(103, 'Kajal', '14-MAR-96', 10.00, 'Baroda', 0, 'IT')
insert into STUDENT values(104, 'Bhoomi', '23-JUN-95', 8.90, 'Ahmedabad', 1, 'ICT')
insert into STUDENT values(105, 'Harmit', '15-FEB-94', 9.80, 'Rajkot', 1, 'IT')
insert into STUDENT values(106, 'Jay', '15-FEB-94', 7.9, 'Rajkot', 2, 'CE')

select * from STUDENT

/*----------------------------------------------------------------------------------------------------------------------------------------------------------------------*/


--1. Give RollNo and Name of students, whose RollNo is greater than 103 and backlog is greater than 0 and branch is either CE or IT.
select RollNo,Name from STUDENT where RollNo > 103 and Backlog > 0 and Branch in ('CE','IT')

--2. Give name of students whose SPI is between 8 and 9 and branch is either CE or IT. (OR & IN)
select Name from STUDENT where SPI in (8,9) and  Branch = 'CE' or Branch = 'IT' 

--3. Find all students who do not belongs to ‘CE’ branch.
select Name from STUDENT where Branch!='CE'

--4. Display RollNo and Name of first three students.
select top 3 RollNo,Name from STUDENT

--5. Display all the details of first three students whose SPI is greater than 8.5.
select top 3 * from STUDENT where SPI > 8.5

--6. Retrieve all unique cities using DISTINCT.
select distinct City from STUDENT

--7. Retrieve all unique branches using DISTINCT.
select distinct Branch from STUDENT

--8. Retrieve all the records of student table as per their Backlog in descending order and then SPI in ascending order.
select * from STUDENT order by Backlog asc , SPI desc

--9. Update the branch and city of Jay to MCA and Jamangar respectively.
update STUDENT set Branch='MCA',City='Jamangar' where Name='Jay'

--10. Update the backlog of Keyur and Bhoomi to NULL.
update STUDENT set Backlog=null where Name in ('Keyur','Bhoomi')

--11. Display the name of students whose backlog is NULL and backlog is greater than 1 and branch is either CE or IT.
select RollNo,Name from STUDENT where Backlog is null or Backlog > 1 or Branch in ('CE','IT')

