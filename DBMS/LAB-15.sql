
/*------------------------------------------------LAB-15-PART-A-----------------------------------------------------------------------------------------*/


--1. Write a function to print "hello world".
create function helloWorld()
returns varchar(50)
as
begin
	return 'Hello World!'
end

select dbo.helloWorld()

--2. Write a function which returns addition of two numbers.
create function sumOfTwo(@var1 int,@var2 int)
returns int
as
begin
	return @var1 + @var2;
end

select dbo.sumOfTwo(4,7)

--3. Write a function to print a cube of a given number.
create function cubeOfNumber(@var1 int)
returns int
as
begin
	return @var1 * @var1 * @var1;
end

select dbo.cubeOfNumber(4)

--4. Write a function to check whether the given number is ODD or EVEN.

Alter function oddOREven(@var1 int)
returns varchar(100)
as
begin
	if(@var1%2=0)
		return 'Even';
	return 'Odd';
end

select dbo.oddOREven(2)

--5. Write a function which returns a table with details of a person whose first name starts with B.
create function persontable()
returns table
as
begin
	return (select * from PERSON where Fname like 'B%');
end

--6. Write a function which returns a table with unique first names from the person table.

create function uniqueName()
returns table
as
begin
	return (select distinct * from PERSON where Fname like '[a-z]');
end


/*-------------------------------------------------------------------------------LAB-15-PART-B-----------------------------------------------------------------------------------------*/

--1. Write a function to compare two integers and return the comparison result. (Using Case statement)
create function comparison(@var1 int,@var2 int)
returns varchar(100)
as
begin
	return case when @var1 > @var2 then cast(@var1 as varchar(10)) +' is Grater'
				when @var1 < @var2 then cast(@var2 as varchar(10)) +' is Grater'
				else cast(@var1 as varchar(10)) +' and '+cast(@var2 as varchar(50))+' are Equal'
	end
end

select dbo.comparison(2,3)

--2. Write a function to print number from 1 to N. (Using while loop)
create function oneToN(@var1 int)
returns int
as
begin
	declare @i int = 1; 
	while @i <= @var1
	begin
		print @i
		set @i = @i + 1
	end
	return 0;
end
go

--3. Write a function to print the sum of even numbers between 1 to 20.
create function sumOfEven()
returns int
as
begin
	declare @i int = 1,@sum int = 0; 
	while @i <= 20
	begin
		if @i%2=0
			set @sum = @sum + @i
		set @i = @i + 1
	end
	return @sum ;
end
go

select dbo.sumOfEven()


/*-------------------------------------------------------------------------------LAB-15-PART-C-----------------------------------------------------------------------------------------*/

--1. Write a function to check whether a given number is prime or not.
alter function primeOrNot(@var1 int)
returns varchar(50)
as
begin
	declare @flag int = 0,@i int = 2;
	while(@i < @var1)
	begin
		if(@var1%@i=0)
			set @flag = @flag +1
		set @i = @i + 1
	end
	if(@flag=0)
		return cast(@var1 as varchar(5))+' is Prime'
	return cast(@var1 as varchar(5))+' is not Prime'
end 

select dbo.primeOrNot(6)

--2. Write a function which accepts two parameters start date & end date, and returns a difference in days.
create function datediffrence(@date1 date,@date2 date)
returns int
as
begin
	return datediff(DAY,@date1,@date2)
end
select dbo.datediffrence('15-SEP-2024','25-SEP-2024')

--3. Write a function which accepts two parameters year & month in integer and returns total days in a given month & year.
create function totalDays(@month int,@year int)
returns int
as
begin
	return day(eomonth(concat(@year,'-',@month,'-01')))
end
select dbo.totalDays(3,2023)

--4. Write a function which accepts departmentID as a parameter & returns a detail of the persons.

create function workerDetail(@Did int)
returns table
as
begin
	return select * from PERSON p inner join Departmentd on p.DepartmentId=d.DepartmentId where d.DepartmentId = @Did
end
