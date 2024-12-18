--------------------------------------------PART-A--------------------------------------------------- Create the STUDENT table
CREATE TABLE STUDENT (
    Rno INT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    City VARCHAR(100) NOT NULL,
    DID INT NOT NULL
);


-- Insert data into the STUDENT table
INSERT INTO STUDENT (Rno, Name, City, DID) VALUES
(101, 'Raju', 'Rajkot', 10),
(102, 'Amit', 'Ahmedabad', 20),
(103, 'Sanjay', 'Baroda', 40),
(104, 'Neha', 'Rajkot', 20),
(105, 'Meera', 'Ahmedabad', 30),
(106, 'Mahesh', 'Baroda', 10);

-- Create the ACADEMIC table
CREATE TABLE ACADEMIC (
    Rno INT PRIMARY KEY,
    SPI DECIMAL(3,1) NOT NULL,
    Bklog INT NOT NULL,
    FOREIGN KEY (Rno) REFERENCES STUDENT(Rno)
);

-- Insert data into the ACADEMIC table
INSERT INTO ACADEMIC (Rno, SPI, Bklog) VALUES
(101, 8.8, 0),
(102, 9.2, 2),
(103, 7.6, 1),
(104, 8.2, 4),
(105, 7.0, 2),
(106, 8.9, 3);

-- Create the DEPARTMENT table
CREATE TABLE DEPARTMENTS (
    DID INT PRIMARY KEY,
    DName VARCHAR(100) NOT NULL
);

-- Insert data into the DEPARTMENT table
INSERT INTO DEPARTMENTS (DID, DName) VALUES
(10, 'Computer'),
(20, 'Electrical'),
(30, 'Mechanical'),
(40, 'Civil');

--1. Display details of students who are from computer department.
SELECT * FROM DEPARTMENTS WHERE DName IN
(SELECT DName FROM DEPARTMENTS WHERE DName = 'Computer')

--2.Displays name of students whose SPI is more than 8.
SELECT Name FROM STUDENT WHERE Rno IN
(SELECT Rno FROM ACADEMIC WHERE SPI > 8)

--3. Display details of students of computer department who belongs to Rajkot city.
SELECT * FROM STUDENT
WHERE DID IN 
(SELECT DID FROM DEPARTMENTS WHERE DName = 'Computer' AND city = 'Rajkot'
);

--4. Find total number of students of electrical department.
SELECT COUNT(Rno) FROM STUDENT WHERE DID IN
(SELECT DID FROM DEPARTMENTS WHERE DName = 'ELECTRICAL')

--5.Display name of student who is having maximum SPI.
SELECT NAME FROM STUDENT WHERE Rno IN
(SELECT Rno FROM ACADEMIC WHERE SPI IN
(SELECT MAX(SPI) FROM ACADEMIC))

--6. Display details of students having more than 1 backlog.
SELECT * FROM STUDENT WHERE Rno IN
(SELECT Rno FROM ACADEMIC WHERE Bklog > 1)

--7.Display name of student who is having second highest SPI.              ----DOUBT
SELECT Name FROM STUDENT WHERE Rno IN
(SELECT Rno FROM ACADEMIC WHERE SPI IN
(SELECT MAX(SPI) FROM ACADEMIC))

--8. Display name of students who are either from computer department or from mechanical department.
SELECT NAME FROM STUDENT WHERE DID IN
(SELECT DID FROM DEPARTMENTS WHERE DName = 'COMPUTER' OR DName = 'Mechanical')
SELECT * FROM DEPARTMENTS
SELECT * FROM STUDENT

--9. Display name of students who are in same department as 102 studying in.
SELECT NAME FROM STUDENT WHERE DID IN
(SELECT DID FROM STUDENT WHERE Rno = 102)

--10. Display name of students whose SPI is more than 9 and who is from electrical department. 
SELECT name FROM STUDENT WHERE Rno IN 
(SELECT Rno FROM ACADEMIC WHERE spi > 9 AND DID IN 
(SELECT DID FROM DEPARTMENTS WHERE DName = 'Electrical'
));

-----------------------------------------------PART-B-----------------------------------

-- Create the COMPANY_MASTER table
CREATE TABLE COMPANY_MASTER (
    COM_ID INT PRIMARY KEY,
    COM_NAME VARCHAR(100) NOT NULL
);

-- Insert data into the COMPANY_MASTER table
INSERT INTO COMPANY_MASTER (COM_ID, COM_NAME) VALUES
(11, 'Samsung'),
(12, 'iBall'),
(13, 'Epsion'),
(14, 'Zebronics'),
(15, 'Asus'),
(16, 'Frontech');

-- Create the ITEM_MASTER table
CREATE TABLE ITEM_MASTER (
    PRO_ID INT PRIMARY KEY,
    PRO_NAME VARCHAR(50), 
    PRO_PRICE DECIMAL(10, 2), 
    PRO_COM INT
);

-- Insert data into the ITEM_MASTER table
INSERT INTO ITEM_MASTER(PRO_ID, PRO_NAME, PRO_PRICE, PRO_COM)
VALUES (101, 'Mother Board', 3200, 15),
       (102, 'Key Board', 450, 16),
	   (103, 'ZIP drive', 250, 1),
	   (104, 'Speaker', 550, 16),
	   (105, 'Monitor', 5000, 11),
	   (106, 'DVD drive', 900, 12),
	   (107, 'CD drive', 800, 12),
	   (108, 'Printer', 2600, 13),
	   (109, 'Refill cartridge', 350, 13),
	   (110, 'Mouse', 250, 12);
	   
	   
-- Create the EMP_DETAILS table
CREATE TABLE EMP_DETAILS (
    EMP_IDNO INT PRIMARY KEY,
    EMP_FNAME VARCHAR(100) NOT NULL,
    EMP_LNAME VARCHAR(100) NOT NULL,
    EMP_DEPT INT NOT NULL
);


-- Insert data into the EMP_DETAILS table
INSERT INTO EMP_DETAILS (EMP_IDNO, EMP_FNAME, EMP_LNAME, EMP_DEPT) VALUES
(127323, 'Michale', 'Robbin', 57),
(526689, 'Carlos', 'Snares', 63),
(843795, 'Enric', 'Dosio', 57),
(328717, 'Jhon', 'Snares', 63),
(444527, 'Joseph', 'Dosni', 47),
(659831, 'Zanifer', 'Emily', 47),
(847674, 'Kuleswar', 'Sitaraman', 57),
(748681, 'Henrey', 'Gabriel', 47),
(555935, 'Alex', 'Manuel', 57),
(539569, 'George', 'Mardy', 27),
(733843, 'Mario', 'Saule', 63),
(631548, 'Alan', 'Snappy', 27),
(839139, 'Maria', 'Foster', 57);


-- Create the EMP_DEPARTMENT table
CREATE TABLE EMP_DEPARTMENT (
    DPT_CODE INT PRIMARY KEY,
    DPT_NAME VARCHAR(100) NOT NULL,
    DPT_ALLOTMENT DECIMAL(10,2) NOT NULL
);


-- Insert data into the EMP_DEPARTMENT table
INSERT INTO EMP_DEPARTMENT (DPT_CODE, DPT_NAME, DPT_ALLOTMENT) VALUES
(57, 'IT', 65000.00),
(63, 'Finance', 15000.00),
(47, 'HR', 240000.00),
(27, 'RD', 55000.00),
(89, 'QC', 75000.00);

--1. Write a SQL query to calculate the average price of each manufacturer's product along with their name. 
--Return Average Price and Company.
SELECT AVG(PRO_PRICE),PRO_COM FROM ITEM_MASTER WHERE PRO_COM IN
(SELECT PRO_COM FROM ITEM_MASTER)
GROUP BY PRO_PRICE,PRO_COM

--2. Write a SQL query to calculate the average price of each manufacturer's product of 350 or more. Return 
--Average Price and Company.
--SELECT AVG(PRO_PRICE),PRO_COM FROM ITEM_MASTER WHERE PRO_PRICE IN
--(SELECT PRO_PRICE FROM ITEM_MASTER WHERE PRO_PRICE > 350 

--3. Write a SQL query to find the most expensive product of each company. Return Product Name, Price and 
--Company

--4. Write a SQL query to find employees whose last name is Gabriel or Dosio. Return 
--emp_idno, emp_fname, 
--emp_lname and emp_dept
SELECT EMP_IDNO,EMP_FNAME,EMP_LNAME FROM EMP_DETAILS			
WHERE EMP_LNAME IN ('Gabriel', 'Dosio')

--5. Write a SQL query to find the employees who work in department 89 or 63. Return emp_idno, emp_fname, 
--emp_lname and emp_dept
SELECT EMP_IDNO,EMP_FNAME,EMP_LNAME FROM EMP_DETAILS WHERE EMP_LNAME IN
(SELECT EMP_LNAME FROM EMP_DETAILS WHERE EMP_DEPT BETWEEN 89 AND 63) 
GROUP BY EMP_IDNO,EMP_FNAME,EMP_LNAME,EMP_DEPT 	


--------------------------------------------PART-C-----------------------------
--1. Write a SQL query to find those employees who work for the department where the departmental allotment 
--amount is more than Rs. 50000. Return emp_fname and emp_lname.SELECT e.EMP_FNAME,e.EMP_LNAME FROM EMP_DETAILS e inner join EMP_DEPARTMENT d ON e.EMP_DEPT=d.DPT_CODE WHERE d.DPT_ALLOTMENT > 50000--2. Write a SQL query to find the departments whose sanction amount is higher than the average sanction 
--amount for all departments. Return dpt_code, dpt_name and dpt_allotment.SELECT DPT_CODE,DPT_NAME,DPT_ALLOTMENT FROM EMP_DEPARTMENT WHERE DPT_ALLOTMENT >(SELECT AVG(DPT_ALLOTMENT) FROM EMP_DEPARTMENT)--3. Write a SQL query to find which departments have more than two employees. Return dpt_name.
SELECT DPT_NAME FROM EMP_DETAILS e INNER JOIN EMP_DEPARTMENT d ON d.DPT_CODE= e.EMP_DEPT GROUP BY DPT_NAMEHAVING COUNT(e.EMP_IDNO) > 2SELECT * FROM EMP_DETAILSSELECT * FROM EMP_DEPARTMENT--4.Write a SQL query to find the departments with the second lowest sanction amount. Return emp_fname 
--and emp_lname