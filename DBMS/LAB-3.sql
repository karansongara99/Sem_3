

/*----------------------------------------------------------LAB-3-PART-A------------------------------------------------------------------------------------*/


create table STUDENT (StuID int, FirstName varchar(50), LastName varchar(50), Website varchar(50), City varchar(50), Division varchar(50))

insert into STUDENT values(1011,'Keyur', 'Patel', 'techonthenet.com', 'Rajkot', 'II-BCX')
insert into STUDENT values(1022, 'Hardik', 'Shah', 'digminecraft.com', 'Ahmedabad', 'I-BCY')
insert into STUDENT values(1033, 'Kajal', 'Trivedi', 'bigactivities.com', 'Baroda', 'IV-DCX')
insert into STUDENT values(1044, 'Bhoomi', 'Gajera', 'checkyourmath.com', 'Ahmedabad', 'III-DCW')
insert into STUDENT values(1055, 'Harmit', 'Mitel', NULL, 'Rajkot', 'II-BCY')
insert into STUDENT values(1066, 'Ashok', 'Jani', NULL, 'Baroda', 'II-BCZ')

select * from STUDENT

/*-------------------------------------------------------------------------------------------------------------------------------------------------*/

--1. Display the name of students whose name starts with ‘k’.
select FirstName from STUDENT where FirstName like 'k%'

--2. Display the name of students whose name consists of five characters.
select FirstName from STUDENT where FirstName like '_____'

--3. Retrieve the first name & last name of students whose city name ends with a & contains six characters.
select FirstName,LastName from STUDENT where City like '_____a'

--4. Display all the students whose last name ends with ‘tel’.
select FirstName,LastName from STUDENT where LastName like '%tel'

--5. Display all the students whose first name starts with ‘ha’ & ends with‘t’.
select FirstName,LastName from STUDENT where FirstName like 'ha%t'

--6. Display all the students whose first name starts with ‘k’ and third character is ‘y’.
select FirstName,LastName from STUDENT where FirstName like 'k_y%'

--7. Display the name of students having no website and name consists of five characters.
select FirstName from STUDENT where Website is null and FirstName like '_____'

--8. Display all the students whose last name consist of ‘jer’.
select FirstName,LastName from STUDENT where LastName like '%jer'

--9. Display all the students whose city name starts with either ‘r’ or ‘b’.
select FirstName,LastName from STUDENT where City like '[rb]%'

--10. Display all the name students having websites.
select FirstName from STUDENT where Website is not null

--11. Display all the students whose name starts from alphabet A to H.
select FirstName,LastName from STUDENT where FirstName like '[a-h]%' order by FirstName

--12. Display all the students whose name’s second character is vowel.
select FirstName,LastName from STUDENT where FirstName like '_[aeiou]%'

--13. Display student’s name whose city name consist of ‘rod’.
select FirstName,LastName from STUDENT where City like '%rod%'

--14. Retrieve the First & Last Name of students whose website name starts with ‘bi’.
select FirstName,LastName from STUDENT where Website like 'bi%'

--15. Display student’s city whose last name consists of six characters.
select City from STUDENT where LastName like '______'

--16. Display all the students whose city name consist of five characters & not starts with ‘ba’.
select FirstName,LastName from STUDENT where City not like 'ba%' and City like '_____'

--17. Show all the student’s whose division starts with ‘II’.
select FirstName,LastName from STUDENT where Division like 'II%'

--18. Find out student’s first name whose division contains ‘bc’ anywhere in division name.
select FirstName from STUDENT where Division like '%bc%'

--19. Show student id and city name in which division consist of six characters and having website name.
select StuID,City from STUDENT where Division like '______' and Website is not null

--20. Display all the students whose name’s third character is consonant.
select FirstName,LastName from STUDENT where FirstName not like '__[aeiou]%'

drop table STUDENT


/*-------------------------------------------------------------LAB-3-PART-B---------------------------------------------------------------------------------*/

create table CUSTOMER (CID int, CustomerName varchar(50), ContactName varchar(50), Address varchar(50), City varchar(50), PostalCode varchar(50), Country varchar(50))

insert into CUSTOMER values (1, 'Alfreds Futterkiste', 'Maria Anders', 'Obere Str. 57', 'Berlin', '12209', 'Germany')
insert into CUSTOMER values (2, 'Ana Trujillo Emparedados y helados','Ana Trujillo','Avda. de la Constitucion 2222','Mexico D.F.','05021','Mexico')
insert into CUSTOMER values (3, 'Antonio Moreno Taqueria', 'Antonio Moreno','Mataderos 2312', 'Mexico D.F.','05023','Mexico')
insert into CUSTOMER values (4, 'Around the Horn','Thomas Hardy','120 Hanover Sq.', 'London', 'WA1 1DP', 'UK')
insert into CUSTOMER values (5, 'Berglunds snabbkop', 'Christina Berglund', 'Berguvsvagen 8', 'Lulea', 'S-958 22', 'Sweden')

SELECT  * FROM CUSTOMER	

/*-------------------------------------------------------------------------------------------------------------------------------------------------*/


--1. Return all customers from a city that starts with 'L' followed by one wildcard character, then 'nd' and then two wildcard characters.
select CustomerName from CUSTOMER where City like 'l_nd__' 

--2. Return all customers from a city that contains the letter 'L'.
select CustomerName from CUSTOMER where City like '%l%' 

--3. Return all customers from a city that do not contains the letter 'L'.
select CustomerName from CUSTOMER where City not like '%l%' 

--4. Return all customers that starts with 'La'.
select CustomerName from CUSTOMER where CustomerName like 'la%' 

--5. Return all customers that do not starts with 'La'.
select CustomerName from CUSTOMER where CustomerName not like 'la%' 

--6. Return all customers that starts with 'a' or starts with 'b'.
select CustomerName from CUSTOMER where CustomerName like '[ab]%' 

--7. Return all customers that starts with 'a' or starts with 'c' or starts with ’t’.
select CustomerName from CUSTOMER where CustomerName like '[act]%' 

--8. Return all customers that starts with 'a' to ’d’.
select CustomerName from CUSTOMER where CustomerName like '[ad]%' 

--9. Return all customers that ends with 'a'.
select CustomerName from CUSTOMER where CustomerName like '%a' 

--10. Return all customers that do not ends with 'a'.
select CustomerName from CUSTOMER where CustomerName not like '%a'

--11. Return all customers that starts with 'b' and ends with ’s’.
select CustomerName from CUSTOMER where CustomerName like 'b%s' 

--12. Return all customers that contains the phrase 'or'.
select CustomerName from CUSTOMER where CustomerName like '%or%' 

--13. Return all customers that starts with "a" and are at least 3 characters in length.
select CustomerName from CUSTOMER where CustomerName like 'a___%'

--14. Return all customers that have "r" in the second position.
select CustomerName from CUSTOMER where CustomerName like '_r%'

--15. Return all customers from Spain.
select CustomerName from CUSTOMER where Country = 'Spain'

truncate table CUSTOMER

drop table CUSTOMER



/*---------------------------------------------------------------LAB-3-PART-C-------------------------------------------------------------------------------*/


create table CUSTOMER (CID int, Name varchar(50), Age int, Address varchar(50), Salary decimal(8,2))

insert into CUSTOMER values (1, 'Ramesh', 32, 'Ahmedabad', 2000.00)
insert into CUSTOMER values (2, 'Khilan', 25, 'Delhi', 1500.00)
insert into CUSTOMER values (3, 'Kaushik', 23, 'Kota', 2000.00)
insert into CUSTOMER values (4, 'Chaitali', 25, 'Mumbai', 6500.00)
insert into CUSTOMER values (5, 'Hardik', 27, 'Bhopal', 8500.00)
insert into CUSTOMER values (6, 'Komal', 22, 'Hyderabad', 4500.00)
insert into CUSTOMER values (7, 'Muffy', 24, 'Indore', 10000.00)

select * from CUSTOMER



/*-------------------------------------------------------------------------------------------------------------------------------------------------*/

--1. Display all the records from the CUSTOMERS table, where the SALARY starts with 200.
select * from CUSTOMER where Salary > 200.00

--2. Displays all the records from the CUSTOMERS table with the NAME that has 'al' in any position.
select * from CUSTOMER where Name like '%al%'

--3. Display all the records from the CUSTOMERS table where the Name starts with K and is at least 4 characters in length.
select * from CUSTOMER where Name like 'K___%'

--4. Display all the records from the CUSTOMERS table, where the NAME has 'm' in the third position.
select * from CUSTOMER where Name like '__m%'

--5. Retrieves the records of the customers whose name starts with C and ends with i, or customers whose name ends with k.
select * from CUSTOMER where Name like 'c%i' or Name like '%k'

--6. Retrieves all the customers whose name does not start with K.
select * from CUSTOMER where Name not like 'k%'
