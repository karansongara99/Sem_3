
/*------------------------------------------------------------------------------------------------------------------------------------------------------------------------*/

create table PERSONt(
PersonID    Int           Primary Key,
PersonName  Varchar (100) Not Null,
Salary      Decimal (8,2) Not Null,
JoiningDate Datetime      Not Null,
City        Varchar (100) Not Null,
Age         Int,
BirthDate   Datetime      Not Null)


create table PersonLog(
PLogID     Int           Primary Key IDENTITY (101, 1),
PersonID   Int           Not Null,
PersonName Varchar (250) Not Null,
Operation  Varchar (50)  Not Null,
UpdateDate Datetime      Not Null)


/*-------------------------------------------------------------------------------LAB-13-PART-A-----------------------------------------------------------------------------------------*/

--1. Create a trigger that fires on INSERT, UPDATE and DELETE operation on the Person table to display a
--message “Record is Affected.”

create trigger TR_Print_MSG
on PERSONt
for insert, update, delete
as
	print 'Record is Affected.'


--2. Create a trigger that fires on INSERT, UPDATE and DELETE operation on the Person table. For that, log all
--operations performed on the person table into PersonLog.

create trigger TR_Personlog_Insert
on PERSONt
for insert
as
begin
	declare @Pid int,@Pname varchar(50)
	select @Pid = PersonID, @Pname = PersonName from inserted
	insert into PersonLog values(@Pid,@Pname,'Insert',getdate());
end

/*-----------------------------------------------------------------------------*/

create trigger TR_Personlog_Update
on PERSONt
for update
as
begin
	declare @Pid int,@Pname varchar(50)
	select @Pid = PersonID, @Pname = PersonName from inserted
	insert into PersonLog values(@Pid,@Pname,'Update',getdate());
end

/*-----------------------------------------------------------------------------*/

create trigger TR_Personlog_Delete
on PERSONt
for delete
as
begin
	declare @Pid int,@Pname varchar(50)
	select @Pid = PersonID, @Pname = PersonName from deleted
	insert into PersonLog values(@Pid,@Pname,'Delete',getdate());
end


/*-------------------------------------------------------------------------------LAB-13-PART-B-----------------------------------------------------------------------------------------*/

--1. Create an INSTEAD OF trigger that fires on INSERT, UPDATE and DELETE operation on the Person table. For
--that, log all operations performed on the person table into PersonLog.
create trigger TR_Personlog_Insert
on PERSONt
for insert
as
begin
	declare @Pid int,@Pname varchar(50)
	select @Pid = PersonID, @Pname = PersonName from inserted
	insert into PersonLog values(@Pid,@Pname,'Insert',getdate());
end

/*-----------------------------------------------------------------------------*/

create trigger TR_Personlog_Update
on PERSON
for update
as
begin
	declare @Pid int,@Pname varchar(50)
	select @Pid = PersonID, @Pname = PersonName from inserted
	insert into PersonLog values(@Pid,@Pname,'Update',getdate());
end

/*-----------------------------------------------------------------------------*/

create trigger TR_Personlog_Delete
on PERSON
for delete
as
begin
	declare @Pid int,@Pname varchar(50)
	select @Pid = PersonID, @Pname = PersonName from deleted
	insert into PersonLog values(@Pid,@Pname,'Delete',getdate());
end

--2. Create a trigger that fires on INSERT operation on the Person table to convert person name into uppercase
--whenever the record is inserted.
create trigger TR_Personlog_Insert_Name
on PERSONt
for insert
as
begin
	declare @Pname varchar(50)
	select @Pname = PersonName from inserted
	insert into PERSONt(PersonName) values(upper(@Pname))
end

/*-------------------------------------------------------------------------------LAB-13-PART-C-----------------------------------------------------------------------------------------*/

--1. Create a trigger that fires on INSERT operation on person table, which calculates the age and update that
--age in Person table.
create trigger TR_Personlog_Insert_Age
on PERSONt
for insert
as
begin
	declare @Bdate date,@Age int
	select @Bdate = BirthDate from inserted
	set @Age = datediff(year,@Bdate,GETDATE())
	insert into PERSONt(Age) values(@Age)
end	

--2. Create DELETE trigger on PersonLog table, when we delete any record of PersonLog table it prints ‘Record
--deleted successfully from PersonLog’.
create trigger TR_Personlog_Print_Delete
on PersonLog
for delete
as
begin
	print 'Record deleted successfully from PersonLog.'
end




CREATE TRIGGER TR_INSERT_PERSON
ON PERSONT
FOR UPDATE
AS
BEGIN
	PRINT 'INSERT SUCCEESS';
END;


