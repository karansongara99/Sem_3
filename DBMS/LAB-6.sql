CREATE TABLE STUDENTS (
  Rno INT PRIMARY KEY,
  Name VARCHAR(50),
  Branch VARCHAR(10)
);

INSERT INTO STUDENTS (Rno, Name, Branch) VALUES (101, 'Raju', 'CE');
INSERT INTO STUDENTS (Rno, Name, Branch) VALUES (102, 'Amit', 'CE');
INSERT INTO STUDENTS (Rno, Name, Branch) VALUES (103, 'Sanjay', 'ME');
INSERT INTO STUDENTS (Rno, Name, Branch) VALUES (104, 'Neha', 'EC');
INSERT INTO STUDENTS (Rno, Name, Branch) VALUES (105, 'Meera', 'EE');
INSERT INTO STUDENTS (Rno, Name, Branch) VALUES (106, 'Mahesh', 'ME');

SELECT * FROM STUDENTS

CREATE TABLE RESULTS (
  Rno INT PRIMARY KEY,
  SPI DECIMAL(8,2)
);

INSERT INTO RESULTS (Rno, SPI) VALUES (101, 8.8);
INSERT INTO RESULTS (Rno, SPI) VALUES (102, 9.2);
INSERT INTO RESULTS (Rno, SPI) VALUES (103, 7.6);
INSERT INTO RESULTS (Rno, SPI) VALUES (104, 8.2);
INSERT INTO RESULTS (Rno, SPI) VALUES (105, 7.0);
INSERT INTO RESULTS (Rno, SPI) VALUES (107, 8.9);

SELECT * FROM RESULTS

CREATE TABLE EMPLOYEES (
  EmployeeNo VARCHAR(10) PRIMARY KEY,
  Name VARCHAR(50),
  ManagerNo VARCHAR(10)
);

INSERT INTO EMPLOYEES (EmployeeNo, Name, ManagerNo) VALUES ('E01', 'Tarun', NULL);
INSERT INTO EMPLOYEES (EmployeeNo, Name, ManagerNo) VALUES ('E02', 'Rohan', 'E02');
INSERT INTO EMPLOYEES (EmployeeNo, Name, ManagerNo) VALUES ('E03', 'Priya', 'E01');
INSERT INTO EMPLOYEES (EmployeeNo, Name, ManagerNo) VALUES ('E04', 'Milan', 'E03');
INSERT INTO EMPLOYEES (EmployeeNo, Name, ManagerNo) VALUES ('E05', 'Jay', 'E01');
INSERT INTO EMPLOYEES (EmployeeNo, Name, ManagerNo) VALUES ('E06', 'Anjana', 'E04');

SELECT * FROM EMPLOYEES
SELECT * FROM ORDERS
SELECT * FROM STUDENTS
SELECT * FROM CUSTOMER
SELECT * FROM RESULTS

--1. Combine information from student and result table using cross join or Cartesian product.
SELECT * FROM STUDENTS CROSS JOIN RESULTS

--2. Display Rno, Name, Branch and SPI of all students
SELECT s.Rno,s.Name,s.Branch,r.SPI FROM STUDENTS s INNER JOIN RESULTS r ON s.Rno = r.Rno

--3.Display Rno, Name, Branch and SPI of CE branch’s student only.SELECT s.Rno,s.Name,s.Branch,r.SPI FROM STUDENTS s INNER JOIN RESULTS r ON s.Rno = r.Rno WHERE Branch = 'CE'

--4. Display Rno, Name, Branch and SPI of other than EC branch’s student only
SELECT s.Rno,s.Name,s.Branch,r.SPI FROM STUDENTS s INNER JOIN RESULTS r ON s.Rno = r.Rno WHERE Branch = 'EC'

--5. Display average result of each branch
SELECT S.Branch,AVG(SPI) FROM STUDENTS s INNER JOIN RESULTS r ON s.Rno = r.Rno GROUP BY S.Branch

--6.Display average result of each branch and sort them in ascending order by SPI
SELECT S.Branch,AVG(SPI) FROM STUDENTS s INNER JOIN RESULTS r ON s.Rno = r.Rno GROUP BY S.Branch ORDER BY S.Branch 

--7. Display average result of CE and ME branch
SELECT S.Branch, AVG(SPI) AS Average_Result
FROM STUDENTS s
INNER JOIN RESULTS r ON S.Rno = R.Rno
WHERE S.Branch IN ('CE', 'ME')
GROUP BY S.Branch

--8. Perform the left outer join on Student and Result tables.
SELECT * FROM STUDENTS s LEFT JOIN RESULTS r ON S.Rno = R.Rno

--9. Perform the right outer join on Student and Result tables
SELECT * FROM STUDENTS s RIGHT JOIN RESULTS r ON S.Rno = R.Rno

--10. SELECT * FROM STUDENTS s RIGHT JOIN RESULTS r ON S.Rno = R.Rno
SELECT * FROM STUDENTS s FULL OUTER JOIN RESULTS r ON S.Rno = R.Rno

--11. Retrieve the names of employee along with their manager name from the Employee table.
SELECT E.Name,M.Name FROM EMPLOYEES e INNER JOIN EMPLOYEES m ON E.ManagerNo = M.EmployeeNo

--------------------------------------LAB-6:::Part-B:-------------------------------------------

CREATE TABLE DEPARTMENT (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(100) NOT NULL UNIQUE,
    DepartmentCode VARCHAR(50) NOT NULL UNIQUE,
    Location VARCHAR(50) NOT NULL
);

DROP TABLE DEPARTMENT;
SELECT * FROM DEPARTMENT;

INSERT INTO DEPARTMENT (DepartmentID, DepartmentName, DepartmentCode, Location) VALUES
(1, 'Admin', 'Adm', 'A-Block'),
(2, 'Computer', 'CE', 'C-Block'),
(3, 'Civil', 'CI', 'G-Block'),
(4, 'Electrical', 'EE', 'E-Block'),
(5, 'Mechanical', 'ME', 'B-Block');

CREATE TABLE PERSON (
    PersonID INT PRIMARY KEY,
    PersonName VARCHAR(100) NOT NULL,
    DepartmentID INT NULL,
    Salary DECIMAL(8,2) NOT NULL,
    JoiningDate DATETIME NOT NULL,
    City VARCHAR(100) NOT NULL,
    FOREIGN KEY (DepartmentID) REFERENCES DEPARTMENT(DepartmentID)
);

SELECT * FROM PERSON
DROP TABLE PERSON

INSERT INTO PERSON (PersonID, PersonName, DepartmentID, Salary, JoiningDate, City) VALUES
(101, 'Rahul Tripathi', 2, 56000.00, '2000-01-01', 'Rajkot'),
(102, 'Hardik Pandya', 3, 18000.00, '2001-09-25', 'Ahmedabad'),
(103, 'Bhavin Kanani', 4, 25000.00, '2000-05-14', 'Baroda'),
(104, 'Bhoomi Vaishnav', 1, 39000.00, '2005-02-08', 'Rajkot'),
(105, 'Rohit Topiya', 2, 17000.00, '2001-07-23', 'Jamnagar'),
(106, 'Priya Menpara', NULL, 9000.00, '2000-10-18', 'Ahmedabad'),
(107, 'Neha Sharma', 2, 34000.00, '2002-12-25', 'Rajkot'),
(108, 'Nayan Goswami', 3, 25000.00, '2001-07-01', 'Rajkot'),
(109, 'Mehul Bhundiya', 4, 13500.00, '2005-01-09', 'Baroda'),
(110, 'Mohit Maru', 5, 14000.00, '2000-05-25', 'Jamnagar');

-------------------------------------------QUERY PART-B-----------------------

--1. Find all persons with their department name & code.
SELECT d.DepartmentName,d.DepartmentCode
FROM PERSON p
INNER JOIN DEPARTMENT d ON d.DepartmentID = p.DepartmentID;

--2. Give department wise maximum & minimum salary with department name.
SELECT d.departmentname, MAX(p.salary) AS max_salary, MIN(p.salary) AS min_salary FROM person p
INNER JOIN department d ON p.departmentid = d.departmentid
GROUP BY d.departmentname;

--3. Find all departments whose total salary is exceeding 100000.
SELECT p.salary FROM person p
INNER JOIN department d ON p.departmentid = d.departmentid
where salary > 100000;

--4. Retrieve person name, salary & department name who belongs to Jamnagar city.
SELECT p.PersonName, p.Salary, d.departmentname FROM person p
INNER JOIN department d ON p.departmentid = d.departmentid
WHERE city = 'Jamnagar';

--5. Find all persons who does not belongs to any department.
SELECT p.personname FROM person p
LEFT JOIN department d ON p.departmentid = d.departmentid
where departmentname is null;

--6.Find department wise person counts
SELECT d.departmentname, COUNT(p.personid) AS personcount FROM person p
INNER JOIN department d ON p.departmentid = d.departmentid
GROUP BY d.departmentname;

--7.Find the average salary of a person who belongs to Ahmedabad city.
SELECT AVG(p.salary) AS avg_salary FROM person p
INNER JOIN department d ON p.departmentid = d.departmentid
WHERE city = 'Ahmedabad';

--8.Produce Output Like: <PersonName> lives in <City> and works in <DepartmentName> Department. (In single 
--column)
SELECT CONCAT(personname, ' lives in ', city, ' and works in ', departmentname, ' Department') AS output
FROM person p
INNER JOIN department d ON p.departmentid = d.departmentid

--9. List all departments who have no persons. 
SELECT d.departmentname FROM person p
INNER JOIN department d ON p.departmentid = d.departmentid
where personname is null;

--10. Find city wise total, average, maximum and minimum salary.
SELECT city, SUM(p.salary) AS total_salary, AVG(p.salary) AS avg_salary, MAX(p.salary) AS max_salary, MIN(p.salary) AS min_salary
FROM person p
INNER JOIN department d ON p.departmentid = d.departmentid
GROUP BY city;


--------------------------------------PART-C------------------------------
--1. Display Unique city names.
SELECT DISTINCT(p.city) FROM person p INNER JOIN person a
ON p.personid = a.personid

--2. List out department names in which more than two persons.
SELECT d.departmentname FROM person p
INNER JOIN department d ON p.departmentid = d.departmentid
GROUP BY d.departmentname 
HAVING COUNT(*) > 2

--3.Combine person name’s first three characters with city name’s last three characters in single column
SELECT CONCAT(p.personname, d.city) AS OUPUT 
FROM 
person p
INNER JOIN person d ON p.personid = d.personid
WHERE p.personname LIKE '___%' AND d.city LIKE '%___'



--4. Give 10% increment in Computer department employee’s salary.
UPDATE employee
SET salary = salary * 1.1
WHERE department = 'Computer';
SELECT * FROM [dbo].[EMPLOYEE]

--5 Display all the person's name with the department whose joining date difference with the current date is 
--more than 365 days
SELECT p.personname, d.departmentname, DATEDIFF(DAY,p.joiningdate,GETDATE()) FROM person p
INNER JOIN department d ON p.departmentid = d.departmentid
WHERE DATEDIFF(DAY,p.joiningdate,GETDATE()) > 365;










