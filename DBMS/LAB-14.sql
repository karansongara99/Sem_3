/*------------------------------------------------------------------------------------------------------------------------------------------------------------------------*/

create table Products (
Product_id Int Primary Key, 
Product_Name Varchar(250) Not Null, 
Price Decimal(10,2) Not Null)

insert into Products values (1, 'Smatphone', 35000)
insert into Products values (2, 'Laptop', 65000)
insert into Products values (3, 'Headphones', 5500)
insert into Products values (4, 'Television', 85000)
insert into Products values (5, 'Gaming Console', 32000)

/*-------------------------------------------------------------------------------LAB-14-PART-A-----------------------------------------------------------------------------------------*/
--1. Create a cursor Product_Cursor to fetch all the rows from a products table.

declare @Pid int, @Pname varchar(50), @Price Decimal(10,2)

declare Product_Cursor cursor
for
	select * from Products

open Product_Cursor

fetch next from Product_Cursor into @Pid, @Pname, @Price
while @@fetch_status = 0
begin
	print concat('Product Id = ',@Pid,', Product Name = ',@Pname,', Product Price = ',@Price)
	fetch next from Product_Cursor into @Pid, @Pname, @Price
end

close Product_Cursor
deallocate Product_Cursor

--2. Create a cursor Product_Cursor_Fetch to fetch the records in form of ProductID_ProductName.
--(Example: 1_Smartphone)
--Create a cursor Product_CursorDelete that deletes all the data from the Products table.
declare @Pid int, @Pname varchar(50)
declare Product_Cursor_Fetch cursor
for
	select Product_id,Product_Name from Products

open Product_Cursor_Fetch

fetch next from Product_Cursor_Fetch into @Pid, @Pname
while @@fetch_status = 0
begin
	print concat(@Pid,'_',@Pname)
	fetch next from Product_Cursor_Fetch into @Pid, @Pname
end

close Product_Cursor_Fetch
deallocate Product_Cursor_Fetch

/*---------------------------------------------------------------------------------------------------------------*/

declare @Pid int
declare Product_CursorDelete cursor
for
	select Product_id from Products

open Product_CursorDelete

fetch next from Product_CursorDelete into @Pid
while @@fetch_status = 0
begin
	delete from Products where Product_id = @Pid
	fetch next from Product_CursorDelete into @Pid
end

close Product_CursorDelete
deallocate Product_CursorDelete


/*-------------------------------------------------------------------------------LAB-14-PART-B-----------------------------------------------------------------------------------------*/

--1. Create a cursor Product_CursorUpdate that retrieves all the data from the products table and increases the
--price by 10%.
declare @Pid int
declare Product_CursorUpdate cursor
for
	select Product_id from Products

open Product_CursorUpdate

fetch next from Product_CursorUpdate into @Pid
while @@fetch_status = 0
begin
	update Products set Price = Price + (Price/10) where Product_id = @Pid
	fetch next from Product_CursorUpdate into @Pid
end

close Product_CursorUpdate
deallocate Product_CursorUpdate

/*-------------------------------------------------------------------------------LAB-14-PART-C-----------------------------------------------------------------------------------------*/

--1. Create a cursor to insert details of Products into the NewProducts table if the product is “Laptop” (Note:
--Create NewProducts table first with same fields as Products table)

create table NewProducts (NewProduct_id Int Primary Key, NewProduct_Name Varchar(250) Not Null, NewPrice Decimal(10,2) Not Null)

select * from NewProducts

declare @Pid int, @Pname varchar(50), @Price Decimal(10,2)
declare NewProduct_CursorInsert cursor
for
	select * from Products

open NewProduct_CursorInsert

fetch next from NewProduct_CursorInsert into @Pid,@Pname,@Price
while @@fetch_status = 0
begin
	if(@Pname = 'Laptop')
		insert into NewProducts values(@Pid,@Pname,@Price)
		
	fetch next from NewProduct_CursorInsert into @Pid,@Pname,@Price
end

close NewProduct_CursorInsert
deallocate NewProduct_CursorInsert