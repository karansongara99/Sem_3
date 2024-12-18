
/*-----------------------------------------------------------------------------------LAB-5-PART-A-------------------------------------------------------------------------------------*/

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

create table SALESMAN (salesman_id int, name varchar(50), city varchar(50), commission decimal(8,2))

insert into SALESMAN values (5001, 'James Hoog', 'New York', 0.15)
insert into SALESMAN values (5002, 'Nail Knite', 'Paris', 0.13)
insert into SALESMAN values (5005, 'Pit Alex', 'London', 0.11)
insert into SALESMAN values (5006, 'Mc Lyon', 'Paris', 0.14)
insert into SALESMAN values (5007, 'Paul Adam', 'Rome', 0.13)
insert into SALESMAN values (5003, 'Lauson Hen', 'San Jose', 0.12)

select * from SALESMAN


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


/*------------------------------------------------------------------------------------------------------------------------------------------------------------------------*/


--1. Write a SQL query to calculate total purchase amount of all orders. Return total purchase amount.
SELECT SUM(purch_amt) AS [Total Purchase Amount] FROM ORDERS 
--2. Write a SQL query to calculate the average purchase amount of all orders. Return average purchase amount.
SELECT AVG(purch_amt) FROM ORDERS
--3. Write a SQL query that counts the number of unique salespeople. Return number of salespeople.
SELECT COUNT(DISTINCT salesman_id) from SALESMAN
--4. Write a SQL query to count the number of customers. Return number of customers.
SELECT COUNT(*) FROM CUSTOMER
--5. Write a SQL query to determine the number of customers who received at least one grade for their activity.

--6. Write a SQL query to find the maximum purchase amount. 
SELECT MAX(purch_amt) FROM ORDERS
--7. Write a SQL query to find the minimum purchase amount.
SELECT MIN(purch_amt) FROM ORDERS
--8. Write a SQL query to find the highest grade of the customers in each city. Return city, maximum grade.
SELECT city, MAX(Grade) AS 'Grade' FROM CUSTOMER GROUP BY city 
--9. Write a SQL query to find the highest purchase amount ordered by each customer. Return customer ID, maximum purchase amount.
SELECT customer_id,MAX(purch_amt) AS 'Purchase Amount' FROM ORDERS GROUP BY customer_id
--10. Write a SQL query to find the highest purchase amount ordered by each customer on a particular date.
--Return, order date and highest purchase amount
SELECT ord_date,MAX(purch_amt) AS 'Purchase Amount' FROM ORDERS GROUP BY ord_date



/*-----------------------------------------------------------------------------------LAB-5-PART-B-------------------------------------------------------------------------------------*/



--1. Write a SQL query to determine the highest purchase amount made by each salesperson on '2012-08-17'. Return salesperson ID, purchase amount.
SELECT salesman_id, MAX(purch_amt) AS highest_purchase_amount FROM ORDERS WHERE ord_date = '2012-08-17' GROUP BY salesman_id;
--2. Write a SQL query to find the highest order (purchase) amount by each customer on a particular order date. Filter the result by highest order (purchase) amount above 2000.00. Return customer id, order date and maximum purchase amount.
SELECT ord_date,salesman_id,MAX(purch_amt) FROM ORDERS WHERE purch_amt > 2000.00 GROUP BY ord_date, salesman_id
--3. Write a SQL query to find the maximum order (purchase) amount in the range 2000 - 6000 (Begin and end values are included.) by combination of each customer and order date. Return customer id, order date and maximum purchase amount.
SELECT customer_id,ord_date,MAX(purch_amt) FROM ORDERS WHERE purch_amt BETWEEN 2000 AND 6000 GROUP BY ord_date,customer_id
--4. Write a SQL query to find the maximum order (purchase) amount based on the combination of each customer and order date. Filter the rows for maximum order (purchase) amount is either 2000, 3000, 5760, 6000. Return customer id, order date and maximum purchase amount.
SELECT customer_id,ord_date,MAX(purch_amt) FROM ORDERS WHERE purch_amt IN (2000,3000,5760,6000) GROUP BY ord_date,customer_id,purch_amt
--5. Write a SQL query to determine the maximum order amount for each customer. The customer ID should be in the range 3002 and 3007(Begin and end values are included.). Return customer id and maximum purchase amount.
SELECT customer_id,MAX(purch_amt) FROM ORDERS WHERE customer_id BETWEEN 3002 AND 3007 GROUP BY customer_id,purch_amt	
--6. Write a SQL query to find the maximum order (purchase) amount for each customer. The customer ID should be in the range 3002 and 3007(Begin and end values are included.). Filter the rows for maximum order (purchase) amount is higher than 1000. Return customer id and maximum purchase amount.
SELECT customer_id,MAX(purch_amt) FROM ORDERS WHERE customer_id BETWEEN 3002 AND 3007 GROUP BY customer_id
SELECT customer_id,MAX(purch_amt) FROM ORDERS WHERE purch_amt > 1000 GROUP BY customer_id
--7. Write a SQL query to determine the maximum order (purchase) amount generated by each salesperson. Filter the rows for the salesperson ID is in the range 5003 and 5008 (Begin and end values are included.). Return salesperson id and maximum purchase amount.
SELECT salesman_id, MAX(purch_amt) AS max_purchase_amount FROM orders WHERE salesman_id BETWEEN 5003 AND 5008 GROUP BY salesman_id
--8. Write a SQL query to count all the orders generated on '2012-08-17'. Return number of orders.
SELECT COUNT(*) FROM ORDERS WHERE ord_date = '2021-08-17' 
--9. Write a SQL query to count the number of salespeople in a city. Return number of salespeople.
SELECT COUNT(*) FROM CUSTOMER WHERE city = 'YourCity';
--10. Write a SQL query to count the number of orders based on the combination of each order date and salesperson. Return order date, salesperson id.
SELECT COUNT(*),salesman_id,ord_date FROM ORDERS GROUP BY salesman_id,ord_date




/*-----------------------------------------------------------------------------------LAB-5-PART-C-------------------------------------------------------------------------------------*/


--1. Write a SQL query to calculate the average product price. Return average product price.
--2. Write a SQL query to count the number of products whose price are higher than or equal to 350. Return
--number of products.
--3. Write a SQL query to compute the average price for unique companies. Return average price and company
--id.
--4. Write a SQL query to compute the sum of the allotment amount of all departments. Return sum of the
--allotment amount.
--5. Write a SQL query to count the number of employees in each department. Return department code and
--number of employees.