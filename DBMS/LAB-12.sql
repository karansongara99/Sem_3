
/*------------------------------------------------------------------------------------------------------------------------------------------------------------------------*/


create table Department 
(DepartmentID int Primary Key, 
DepartmentName Varchar (100) Not Null Unique)

insert into Department values(1, 'Admin')
insert into Department values(2, 'IT')
insert into Department values(3, 'HR')
insert into Department values(4, 'Account')

select * from Department

create table Designation(
DesignationID Int Primary Key,
DesignationName Varchar (100) Not Null Unique)

insert into Designation values(11, 'Jobber')
insert into Designation values(12, 'Welder')
insert into Designation values(13, 'Clerk')
insert into Designation values(14, 'Manager')
insert into Designation values(15, 'CEO')

select * from Designation

create table PERSON(
WorkerID      Int           Primary Key IDENTITY (101, 1), 
FirstName     Varchar (100) Not Null,
LastName      Varchar (100) Not Null,
Salary        Decimal (8,2) Not Null,
JoiningDate   Datetime      Not Null,
DepartmentID  Int           Foreign Key References Department(DepartmentID),
DesignationID Int           Foreign Key References Designation(DesignationID))

insert into PERSON values ( 'Rahul', 'Anshu', 56000, '01-JAN-1990', 1, 12)
insert into PERSON values ( 'Hardik', 'Hinsu', 18000, '25-SEP-1990', 2, 11)
insert into PERSON values ( 'Bhavin', 'Kamani', 25000, '14-MAY-1991', NULL, 11)
insert into PERSON values ( 'Bhoomi', 'Patel', 39000, '20-FEB-2014', 1, 13)
insert into PERSON values ( 'Rohit', 'Rajgor', 17000, '23-JUL-1990', 2, 15)
insert into PERSON values ( 'Priya', 'Mehta', 25000, '18-OCT-1990', 2, NULL)
insert into PERSON values ( 'Neha', 'Trivedi', 18000, '20-FEB-2014', 3, 15)

select * from PERSON


/*-------------------------------------------------------------------------------LAB-12-PART-A-----------------------------------------------------------------------------------------*/


--1. Create a Procedure on Department, Designation & Person Table for INSERT, UPDATE & DELETE Procedures.

create procedure SP_Department_Insert
@Did int,
@Dname varchar(50)
as
	insert into Department values(@Did, @Dname);
go

create procedure SP_Department_Update
@Did int,
@Dname varchar(50)
as
	update Department set DepartmentName = @Dname where DepartmentID = @Did
go

create procedure SP_Department_Delete_DepartmentID
@Did int
as
	delete from Department where DepartmentID = @Did
go

/*-----------------------------------------------------------------------------*/

create procedure SP_Designation_Insert
@Did int,
@Dname varchar(50)
as
	insert into Designation values (@Did,@Dname)
go

create procedure SP_Designation_Update
@Did int,
@Dname varchar(50)
as
	update Designation set DesignationName = @Dname where DesignationID = @Did
go

create procedure SP_Designation_Delete_DesignationID
@Did int
as
	delete from Designation where DesignationID = @Did
go

/*-----------------------------------------------------------------------------*/

create procedure SP_PERSON_Insert
@Fname varchar(50),
@Lname varchar(50),
@Salary Decimal (8,2),
@JoiningDate Datetime,
@DepId int,
@DesId int
as
	insert into PERSON values ( @Fname, @Lname, @Salary, @JoiningDate, @DepId, @DesId)
go

create procedure SP_PERSON_Update
@Wid int,
@Fname varchar(50),
@Lname varchar(50),
@Salary Decimal (8,2),
@JoiningDate Datetime,
@DepId int,
@DesId int
as
	update PERSON set FirstName=@Fname, LastName=@Lname, Salary=@Salary, JoiningDate=@JoiningDate, DepartmentID=@DepId, DesignationID=@DesId where WorkerID=@wid
go

create procedure SP_PERSON_Delete
@Wid int
as
	
	delete from PERSON where WorkerID = @Wid
go

--2. Create a Procedure on Department, Designation & Person Table for SELECTBYPRIMARYKEY

create procedure SP_Department_SelectByPK
@Did int
as
	select * from Department where DepartmentID = @Did
go

/*-----------------------------------------------------------------------------*/

create procedure SP_Designation_SelectByPK
@Did int
as
	select * from Designation where DesignationID = @Did
go

/*-----------------------------------------------------------------------------*/

create procedure SP_PERSON_SelectByPK
@Wid int
as
	select * from PERSON where WorkerID = @Wid
go

--3. Create a Procedure on Department, Designation & Person Table (If foreign key is available then do write join and take columns on select list)

create procedure SP_Join
as
	select * from PERSON p left outer join Department dep on p.DepartmentID=dep.DepartmentID left outer join Designation des on p.DesignationID = des.DesignationID
go

--4. Create a Procedure that shows details of the first 3 persons

create procedure SP_PERSON_SelectTopThree
@Wid int
as
	select top 3 * from PERSON
go


/*-------------------------------------------------------------------------------LAB-12-PART-B-----------------------------------------------------------------------------------------*/

--1. Create a Procedure that takes the department name as input and returns a table with all workers working in that department.

create procedure SP_Designation_Workers
@Dname varchar(50)
as
	select * from PERSON p inner join Department d on p.DepartmentID = d.DepartmentID where d.DepartmentName = @Dname
go

--2. Create Procedure that takes department name & designation name as input and returns a table with worker’s first name, salary, joining date & department name.

create procedure SP_Department_Designation
@DepName varchar(50),
@DesName varchar(50)
as
	select p.FirstName,p.Salary,p.JoiningDate,dep.DepartmentName from 
	PERSON p left outer join Department dep 
		on p.DepartmentID = dep.DepartmentID 
	left outer join Designation des 
		on p.DesignationID = des.DesignationID where dep.DepartmentName=@DepName and des.DesignationName = @DesName
go

--3. Create a Procedure that takes the first name as an input parameter and display all the details of the worker with their department & designation name.

create procedure SP_Wortker_SelectPK
@Fname varchar(50)
as
	select p.WorkerID,p.FirstName,p.Salary,p.JoiningDate,dep.DepartmentName,des.DesignationName from 
	PERSON p left outer join Department dep 
		on p.DepartmentID = dep.DepartmentID 
	left outer join Designation des 
		on p.DesignationID = des.DesignationID where p.FirstName=@Fname
go

--4. Create Procedure which displays department wise maximum, minimum & total salaries.

create procedure SP_Department_SelectPk
as
	select 
		dep.DepartmentName,
		max(p.Salary) as [Max Salary],
		min(p.Salary) as [Min Salary],
		sum(p.Salary)  as [Total Salary]
	from PERSON p left outer join Department dep 
		on p.DepartmentID = dep.DepartmentID
	group by dep.DepartmentName
go

--5. Create Procedure which displays designation wise average & total salaries.

create procedure SP_Designation_SelectPk
as
	select 
		des.DesignationName,
		avg(p.Salary) as [Average Salary],
		sum(p.Salary)  as [Total Salary]
	from PERSON p left outer join Designation des
		on p.DesignationID = des.DesignationID
	group by des.DesignationName
go


/*-------------------------------------------------------------------------------LAB-12-PART-C-----------------------------------------------------------------------------------------*/

--1. Create Procedure that Accepts Department Name and Returns Person Count.
create procedure SP_Person_Count
@Dname varchar(50)
as
	select 
		dep.DepartmentName,
		count(p.WorkerID) as [Worker Count]
	from PERSON p left outer join Department dep 
		on p.DepartmentID = dep.DepartmentID
	where dep.DepartmentName = @Dname
	group by dep.DepartmentName
go


--2. Create Procedure that accepts Department Name & Designation as a parameter with given test cases and
--returns a table with FirstName, LastName, Salary, JoiningDate, DepartmentName & Designation.

--Department Name Designation
--IT              NULL
--NULL            Jobber
--IT              Jobber
--NULL            NULL

create procedure SP_Department_Designation_SelectByPK
@DepName varchar(50),
@DesName varchar(50)
as
	select 
		p.FirstName,
		p.LastName,
		p.Salary,
		p.JoiningDate,
		dep.DepartmentName,
		des.DesignationName
	from PERSON p left outer join Department dep 
		on p.DepartmentID = dep.DepartmentID 
	left outer join Designation des 
		on p.DesignationID = des.DesignationID 
	where dep.DepartmentName=@DepName and des.DesignationName = @DesName
go

--3. Create Procedure that returns DepartmentID, DepartmentName & Count of all person belongs to that
--department. i.e. 1 | Admin | 2

create procedure SP_DepartmentID_SelectByPK
@Did int
as
	select 
		dep.DepartmentID,
		dep.DepartmentName,
		count(p.WorkerID) as [Worker Count]
	from PERSON p left outer join Department dep 
		on p.DepartmentID = dep.DepartmentID
	where dep.DepartmentID = @Did
	group by dep.DepartmentID, dep.DepartmentName
go
