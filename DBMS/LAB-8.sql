
/*-----------------------------------------------------------------------------------LAB-8-PART-A-------------------------------------------------------------------------------------*/

create table ORDERS (ord_no int, purch_amt decimal(8,2), ord_date date, customer_id int, salesman_id int)


insert into ORDERS values(70001, 150.5, '05-OCT-2012', 3005, 5002)
insert into ORDERS values(70009, 270.65, '10-SEP-2012', 3001, 5005)
insert into ORDERS values(70002, 65.26, '05-OCT-2012', 3002, 5001)
insert into ORDERS values(70004, 110.5, '17-AUG-2012', 3009, 5003)
insert into ORDERS values(70007, 948.5, '10-SEP-2012', 3005, 5002)
insert into ORDERS values(70005, 2400.6, '27-JUL-2012', 3007, 5001)
insert into ORDERS values(70008, 5760, '10-SEP-2012', 3002, 5001)
insert into ORDERS values(70010, 1983.43, '10-OCT-2012', 3004, 5006)
insert into ORDERS values(70003, 2480.4, '10-OCT-2012', 3009, 5003)
insert into ORDERS values(70012, 250.45, '27-JUN-2012', 3008, 5002)
insert into ORDERS values(70011, 75.29, '17-AUG-2012', 3003, 5007)
insert into ORDERS values(70013, 3045.6, '25-APR-2012', 3002, 5001)
insert into ORDERS values(70001, 150.5, '05-OCT-2012', 3005, 5002)
insert into ORDERS values(70009, 270.65, '10-SEP-2012', 3001, 5005)
insert into ORDERS values(70002, 65.26, '05-OCT-2012', 3002, 5001)

select * from ORDERS

drop table ORDERS

create table SALESMAN (salesman_id int, name varchar(50), city varchar(50), commission decimal(8,2))

insert into SALESMAN values (5001, 'James Hoog', 'New York', 0.15)
insert into SALESMAN values (5002, 'Nail Knite', 'Paris', 0.13)
insert into SALESMAN values (5005, 'Pit Alex', 'London', 0.11)
insert into SALESMAN values (5006, 'Mc Lyon', 'Paris', 0.14)
insert into SALESMAN values (5007, 'Paul Adam', 'Rome', 0.13)
insert into SALESMAN values (5003, 'Lauson Hen', 'San Jose', 0.12)

select * from SALESMAN

drop table SALESMAN




create table CUSTOMER (customer_id int, cust_name varchar(50), city varchar(50), Grade int, salesman_id int)

insert into CUSTOMER values(3002, 'Nick Rimando', 'New York', 100, 5001)
insert into CUSTOMER values(3007, 'Brad Davis', 'New York', 200, 5001)
insert into CUSTOMER values(3005, 'Graham Zusi', 'California', 200, 5002)
insert into CUSTOMER values(3008, 'Julian Green', 'London', 300, 5002)
insert into CUSTOMER values(3004, 'Fabian Johnson', 'Paris', 300, 5006)
insert into CUSTOMER values(3009, 'Geoff Cameron', 'Berlin', 100, 5003)
insert into CUSTOMER values(3003, 'Jozy Altidor', 'Moscow', 200, 5007)
insert into CUSTOMER values(3001, 'Brad Guzan', 'London', null, 5005)

select * from CUSTOMER

drop table CUSTOMER


/*------------------------------------------------------------------------------------------------------------------------------------------------------------------------*/


--1. Write a SQL query to find the salesperson and customer who reside in the same city. Return Salesman,
--cust_name and city.

select c.cust_name,s.name,c.city from CUSTOMER c inner join SALESMAN s on c.City = s.City


--2. Write a SQL query to find those orders where the order amount exists between 500 and 2000. Return ord_no,
--purch_amt, cust_name, city.

select ord_no,purch_amt,cust_name,city from ORDERS o inner join CUSTOMER c on o.customer_id = c.customer_id where purch_amt >= 500 and purch_amt <= 2000


--3. Write a SQL query to find the salesperson(s) and the customer(s) he represents. Return Customer Name,
--city, Salesman, commission.

select c.cust_name,s.name,c.city,s.commission from CUSTOMER c inner join SALESMAN s on c.salesman_id = s.salesman_id


--4. Write a SQL query to find salespeople who received commissions of more than 12 percent from the
--company. Return Customer Name, customer city, Salesman, commission.

select c.cust_name,c.city,s.name,s.commission from CUSTOMER c inner join SALESMAN s on c.salesman_id = s.salesman_id where s.commission > 0.12

--5. Write a SQL query to locate those salespeople who do not live in the same city where their customers live
--and have received a commission of more than 12% from the company. Return Customer Name, customer
--city, Salesman, salesman city, commission.

select c.cust_name,c.city,s.city,s.name,s.commission from CUSTOMER c inner join SALESMAN s on c.City != s.City where s.commission > 0.12

--6. Write a SQL query to find the details of an order. Return ord_no, ord_date, purch_amt, Customer Name, grade,
--Salesman, commission.

select o.ord_no,o.purch_amt,c.cust_name,c.Grade,s.name,s.commission from  ORDERS o inner join  CUSTOMER c on o.customer_id = c.customer_id inner join SALESMAN s on o.salesman_id = s.salesman_id

--7. Write a SQL statement to join the tables salesman, customer and orders so that the same column of each
--table appears once and only the relational rows are returned.

select o.ord_no,o.purch_amt,o.ord_date,c.customer_id,c.cust_name,c.city,c.Grade,s.salesman_id,s.name,s.name,s.commission from  ORDERS o inner join  CUSTOMER c on o.customer_id = c.customer_id inner join SALESMAN s on o.salesman_id = s.salesman_id

--8. Write a SQL query to display the customer name, customer city, grade, salesman, salesman city. The results
--should be sorted by ascending customer_id.

select c.cust_name,c.city,c.Grade,s.name,s.city from CUSTOMER c inner join SALESMAN s on c.salesman_id = s.salesman_id order by c.customer_id

--9. Write a SQL query to find those customers with a grade less than 300. Return cust_name, customer city,
--grade, Salesman, salesmancity. The result should be ordered by ascending customer_id. 

select c.cust_name,c.city,c.Grade,s.name,s.city from CUSTOMER c inner join SALESMAN s on c.salesman_id = s.salesman_id where c.Grade < 300 order by c.customer_id

--10. Write a SQL statement to make a report with customer name, city, order number, order date, and order
--amount in ascending order according to the order date to determine whether any of the existing customers
--have placed an order or not.

select c.cust_name,c.city,o.ord_no,o.ord_date,o.purch_amt from ORDERS o 
inner join CUSTOMER c on o.customer_id = c.customer_id 
order by o.ord_date




/*-----------------------------------------------------------------------------------LAB-8-PART-B-------------------------------------------------------------------------------------*/



--1. Write a SQL statement to generate a report with customer name, city, order number, order date, order
--amount, salesperson name, and commission to determine if any of the existing customers have not placed
--orders or if they have placed orders through their salesman or by themselves.


select c.cust_name,c.city,o.ord_no,o.ord_date,o.purch_amt,s.name,s.commission from  
ORDERS o full outer join  CUSTOMER c on o.customer_id = c.customer_id 
full outer join SALESMAN s on o.salesman_id = s.salesman_id where c.salesman_id = s.salesman_id or c.customer_id = o.customer_id

--2. Write a SQL statement to generate a list in ascending order of salespersons who work either for one or more
--customers or have not yet joined any of the customers.

select s.name,count(c.salesman_id) as [Works for] from CUSTOMER c inner join SALESMAN s on c.salesman_id = s.salesman_id group by s.name order by count(c.salesman_id) desc

--3. Write a SQL query to list all salespersons along with customer name, city, grade, order number, date, and amount.

select s.name,c.cust_name,c.city,c.Grade,o.ord_no,o.ord_date,o.purch_amt from ORDERS o full outer join  CUSTOMER c on o.customer_id = c.customer_id full outer join SALESMAN s on o.salesman_id = s.salesman_id where c.salesman_id = s.salesman_id

--4. Write a SQL statement to make a list for the salesmen who either work for one or more customers or yet to
--join any of the customer. The customer may have placed, either one or more orders on or above order
--amount 2000 and must have a grade, or he may not have placed any order to the associated supplier.

select s.name,count(c.salesman_id) as [Works for],count(c.customer_id) as [Number of order],o.purch_amt from  
ORDERS o full outer join  CUSTOMER c on o.customer_id = c.customer_id 
full outer join SALESMAN s on o.salesman_id = s.salesman_id
where o.purch_amt > 2000 and c.Grade is not null or o.salesman_id != s.salesman_id group by s.name,o.purch_amt having  count(s.salesman_id) > 0

--5. For those customers from the existing list who put one or more orders, or which orders have been placed by
--the customer who is not on the list, create a report containing the customer name, city, order number, order
--date, and purchase amount.

select c.cust_name,c.city,o.ord_no,o.ord_date,o.purch_amt 
from ORDERS o inner join CUSTOMER c on o.customer_id = c.customer_id 
group by c.cust_name,c.city,o.ord_no,o.ord_date,o.purch_amt having count(o.customer_id) > 0

--6. Write a SQL statement to generate a report with the customer name, city, order no. order date, purchase
--amount for only those customers on the list who must have a grade and placed one or more orders or which
--order(s) have been placed by the customer who neither is on the list nor has a grade.

select c.cust_name,c.city,o.ord_no,o.ord_date,o.purch_amt 
from ORDERS o inner join CUSTOMER c 
on o.customer_id = c.customer_id 
where c.Grade is not null 
group by c.cust_name,c.city,o.ord_no,o.ord_date,o.purch_amt 
having count(o.customer_id) > 0
select c.cust_name,c.city,o.ord_no,o.ord_date,o.purch_amt 
from ORDERS o inner join CUSTOMER c 
on o.customer_id = c.customer_id 
where c.Grade is not null 
group by c.cust_name,c.city,o.ord_no,o.ord_date,o.purch_amt 
having count(o.customer_id) = 0


--7. Write a SQL query to combine each row of the salesman table with each row of the customer table.

select c.customer_id,c.cust_name,c.city,c.Grade,c.salesman_id,s.name,s.city,s.commission from CUSTOMER c inner join SALESMAN s on c.salesman_id = s.salesman_id

--8. Write a SQL statement to create a Cartesian product between salesperson and customer, i.e. each
--salesperson will appear for all customers and vice versa for that salesperson who belongs to that city.

select c.customer_id,c.cust_name,c.city,c.Grade,c.salesman_id,s.name,s.city,s.commission from CUSTOMER c full outer join SALESMAN s on c.salesman_id = s.salesman_id and c.city = s.city

--9. Write a SQL statement to create a Cartesian product between salesperson and customer, i.e. each
--salesperson will appear for every customer and vice versa for those salesmen who belong to a city and
--customers who require a grade.

select c.customer_id,c.cust_name,c.city,c.Grade,c.salesman_id,s.name,s.city,s.commission from CUSTOMER c full outer join SALESMAN s on c.salesman_id = s.salesman_id and c.city = s.city and c.Grade is not null

--10. Write a SQL statement to make a Cartesian product between salesman and customer i.e. each salesman
--will appear for all customers and vice versa for those salesmen who must belong to a city which is not the
--same as his customer and the customers should have their own grade.

select c.customer_id,c.cust_name,c.city,c.Grade,c.salesman_id,s.name,s.city,s.commission from CUSTOMER c full outer join SALESMAN s on c.salesman_id = s.salesman_id and c.city != s.city and c.Grade is not null



