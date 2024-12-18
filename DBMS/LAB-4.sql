/*-----------------------------------------------------------------------------------LAB-4-PART-A-------------------------------------------------------------------------------------*/

create table EMPLOYEE (EID int, EName varchar(50), Department varchar(50), Salary decimal(8,2), JoiningDate datetime, City varchar(50))

insert into EMPLOYEE values(101, 'Rahul', 'Admin', 56000, '1-Jan-90', 'Rajkot')
insert into EMPLOYEE values(102, 'Hardik', 'IT', 18000, '25-Sep-90', 'Ahmedabad')
insert into EMPLOYEE values(103, 'Bhavin', 'HR', 25000, '14-May-91', 'Baroda')
insert into EMPLOYEE values(104, 'Bhoomi', 'Admin', 39000, '8-Feb-91', 'Rajkot')
insert into EMPLOYEE values(105, 'Rohit', 'IT', 17000, '23-Jul-90', 'Jamnagar')
insert into EMPLOYEE values(106, 'Priya', 'IT', 9000, '18-Oct-90', 'Ahmedabad')
insert into EMPLOYEE values(107, 'Neha', 'HR', 34000, '25-Dec-91', 'Rajkot')

select * from EMPLOYEE

/*---------------------------------------------------------------------------------------------------------------------------------------------------------------------*/


--1. Display the Highest, Lowest, Total, and Average salary of all employees. Label the columns Maximum, Minimum, Total_Sal and Average_Sal, respectively.
select max(Salary) as [Maximum],min(Salary) as [Minimum], sum(Salary) as [Total_Sal], avg(Salary) as [Average_Sal] from EMPLOYEE

--2. Find total number of employees of EMPLOYEE table.
select count(*) as [number of employees] from EMPLOYEE

--3. Give maximum salary from IT department.
select max(Salary) as [Maximum Salary] from EMPLOYEE where Department = 'IT'

--4. Count total number of cities of employee without duplication.
select count(distinct City) as [Number of Cities] from EMPLOYEE

--5. Display city with the total number of employees belonging to each city.
select City,count(EID) as [Number of Employee] from EMPLOYEE group by City

--6. Display city having more than one employee.
select City,count(EID) as [Number of Employee] from EMPLOYEE group by City having count(EID) > 1

--7. Give total salary of each department of EMPLOYEE table.
select Department,sum(Salary) as [Total Salary] from EMPLOYEE group by Department

--8. Give average salary of each department of EMPLOYEE table without displaying the respective department name.
select avg(Salary) as [Average Salary] from EMPLOYEE group by Department

--9. Give minimum salary of employee who belongs to Ahmedabad.
select min(Salary) as [Min Salary] from EMPLOYEE where City = 'Ahmedabad'

--10. List the departments having total salaries more than 50000 and located in city Rajkot.
select Department,sum(Salary) as [Total Salary] from EMPLOYEE where City = 'Rajkot' group by Department having sum(Salary) > 50000

--11. Count the number of employees living in Rajkot.
select count(EID) as [Number of Employee] from EMPLOYEE where City = 'rajkot'

--12. Display the difference between the highest and lowest salaries. Label the column DIFFERENCE.
select max(Salary)-min(Salary) as [DIFFERENCE] from EMPLOYEE

--13. Display the total number of employees hired before 1st January, 1991.
select count(EID) as [Number of Employee] from EMPLOYEE where JoiningDate < '1-JAN-91'

--14. Display total salary of each department with total salary exceeding 35000 and sort the list by total salary.
select Department,sum(Salary) as [Total Salary] from EMPLOYEE group by Department having  sum(Salary) > 35000  order by sum(Salary)

--15. List out department names in which more than two employees
select Department,count(EID) as [Number of Employee] from EMPLOYEE group by Department having count(EID) > 1


/*-----------------------------------------------------------------------------------LAB-4-PART-B-------------------------------------------------------------------------------------*/


create table COMPANY (Title varchar(50), Company varchar(50), Type varchar(50), Production_year int, System varchar(50), Production_cost int, Revenue int, Rating int)


insert into COMPANY values('Blasting Boxes', 'Simone Games', 'action adventure', 1998, 'PC', 100000, 200000, 7)
insert into COMPANY values('Run Run Run!', '13 Mad Bits', 'shooter', 2011, 'PS3', 3500000, 650000, 3)
insert into COMPANY values('Duck n’Go', '13 Mad Bits', 'shooter', 2012, 'Xbox', 3000000, 1500000, 5)
insert into COMPANY values('SQL Wars!', 'Vertabelo', 'wargames', 2017, 'Xbox', 5000000, 25000000, 10)
insert into COMPANY values('Tap Tap Hex!', 'PixelGaming Inc.', 'rhythm', 2006, 'PS2', 2500000, 3500000, 7)
insert into COMPANY values('NoRisk', 'Simone Games', 'action adventure', 2004, 'PS2', 1400000, 3400000, 8)

select * from COMPANY

drop table CUSTOMER

/*---------------------------------------------------------------------------------------------------------------------------------------------------------------------*/

--1. Display the name and total revenue for each company.
select Company,sum(Revenue) as [Total Revenue] from COMPANY group by Company

--2. Generate a report with the production year and the number of games released this year (named count), 
--the average of production cost for all games produced in this year (named avg_cost) and the average revenue for that year (named avg_revenue).
select Production_year,count(Title) as [Games Released this Year],avg(Production_cost) as [Average of Production Cost],avg(Revenue) as [Average Revenue] from COMPANY group by Production_year

--3. Count how many games of a given type are profitable (i.e. the revenue was greater than the production cost). 
--Show the game type and the number of profitable games (named number_of_games) for each type.
select Type,count(*) as [number_of_games] from COMPANY where Revenue > Production_cost group by Type

--4. Obtain the type of games and the total revenue generated for games with a production_year after 2010 and with a PS2 or PS3 system. Order the result so the types with the highest revenue come first.
select Type,sum(Revenue) as [Total Revenue] from COMPANY where Production_year > 2010 and System in ('PS2','PS3') group by Type order by sum(Revenue)

--5. For all companies present in the table, obtain their names and the sum of gross profit over all years. (Assume that gross profit = revenue - cost of production). Name this column gross_profit_sum. Order the results by gross profit, in descending order.
select Company,sum(Revenue-Production_cost) as [gross_profit_sum] from COMPANY group by Company order by sum(Revenue-Production_cost) desc

--6. Obtain the yearly gross profit of each company. In other words, we want a report with the company name, the year, and the gross profit for that year. Order the report by company name and year.
select Company,Production_year,sum(Revenue-Production_cost) as [Gross Profit]  from COMPANY group by Production_year,Company order by Company,Production_year--7. For each company, select its name, the number of games it’s produced (as the number_of_games column), and the average cost of production (as the avg_cost column). Show only companies producing more than one game.select Company,Title,count(*) as [number_of_games],avg(Production_cost) as [avg_cost] from COMPANY group by Company,Title order by Company,Title