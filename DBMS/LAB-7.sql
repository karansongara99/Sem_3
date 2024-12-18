-- Create the DEPARTMENT table
CREATE TABLE DEPARTMENT (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(100) NOT NULL UNIQUE,
    DepartmentCode VARCHAR(50) NOT NULL UNIQUE,
    Location VARCHAR(50) NOT NULL
);


INSERT INTO DEPARTMENT (DepartmentID, DepartmentName, DepartmentCode, Location) VALUES
(1, 'Admin', 'Adm', 'A-Block'),
(2, 'Computer', 'CE', 'C-Block'),
(3, 'Civil', 'CI', 'G-Block'),
(4, 'Electrical', 'EE', 'E-Block'),
(5, 'Mechanical', 'ME', 'B-Block');

-- Create the PERSON table
CREATE TABLE PERSON (
    PersonID INT PRIMARY KEY,
    PersonName VARCHAR(100) NOT NULL,
    DepartmentID INT NULL,
    Salary DECIMAL(8,2) NOT NULL,
    JoiningDate DATETIME NOT NULL,
    City VARCHAR(100) NOT NULL,
    FOREIGN KEY (DepartmentID) REFERENCES DEPARTMENT(DepartmentID)
);

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

--2. Find the person's name whose department is located in C-Block.
SELECT p.PersonName,DepartmentName,d.Location FROM person p
INNER JOIN department d ON p.departmentid = d.departmentid
WHERE d.Location = 'C-Block'
SELECT * FROM [dbo].[DEPARTMENT]
SELECT * FROM [dbo].[PERSON]

--3. Retrieve person name, salary & department name who belongs to Jamnagar city.
SELECT p.PersonName, p.Salary, d.departmentname FROM person p
INNER JOIN department d ON p.departmentid = d.departmentid
WHERE city = 'Jamnagar';


--4. Retrieve person name, salary & department name who does not belong to Rajkot city.
SELECT p.PersonName, p.Salary, d.departmentname FROM person p
INNER JOIN department d ON p.departmentid = d.departmentid
WHERE city != 'Rajkot';

--5. Retrieve person’s name of the person who joined the Civil department after 1-Aug-2001.
SELECT p.JoiningDate,PersonName,d.DepartmentName FROM PERSON p INNER JOIN DEPARTMENT d
ON p.DepartmentID = d.DepartmentID
WHERE d.DepartmentName = 'Civil' AND p.JoiningDate > '1-Aug-2001'

--6. Find details of all persons who belong to the Computer department.
SELECT p.PersonName,d.DepartmentName FROM PERSON p INNER JOIN DEPARTMENT d
ON p.DepartmentID = d.DepartmentID
WHERE d.DepartmentName = 'Computer'
	
--7. Display all the person's name with the department whose joining date difference with the current date is 
--more than 365 days.
SELECT p.personname, d.departmentname, DATEDIFF(DAY,p.joiningdate,GETDATE()) FROM person p
INNER JOIN department d ON p.departmentid = d.departmentid
WHERE DATEDIFF(DAY,p.joiningdate,GETDATE()) > 365;

--8.Find department wise person counts
SELECT d.departmentname, COUNT(p.personid) AS personcount FROM person p
INNER JOIN department d ON p.departmentid = d.departmentid
GROUP BY d.departmentname;

--9. Give department wise maximum & minimum salary with department name.
SELECT d.departmentname, MAX(p.salary) AS max_salary, MIN(p.salary) AS min_salary FROM person p
INNER JOIN department d ON p.departmentid = d.departmentid
GROUP BY d.departmentname;

--10. Find city wise total, average, maximum and minimum salary.
SELECT city, SUM(p.salary) AS total_salary, AVG(p.salary) AS avg_salary, MAX(p.salary) AS max_salary, MIN(p.salary) AS min_salary
FROM person p
INNER JOIN department d ON p.departmentid = d.departmentid
GROUP BY city;

--11. Find the average salary of a person who belongs to Ahmedabad city.
SELECT AVG(p.salary) AS avg_salary FROM person p
INNER JOIN department d ON p.departmentid = d.departmentid
WHERE city = 'Ahmedabad';

--12. Produce Output Like: <PersonName> lives in <City> and works in <DepartmentName> Department. (In single 
--column)
SELECT CONCAT(personname, ' lives in ', city, ' and works in ', departmentname, ' Department') AS output
FROM person p
INNER JOIN department d ON p.departmentid = d.departmentid

--13. Produce Output Like: <PersonName> earns <Salary> from <DepartmentName> department monthly. (In 
--single column)
SELECT CONCAT(personname, ' lives in ', Salary, ' and works in ', departmentname, ' Department') AS output
FROM person p
INNER JOIN department d ON p.departmentid = d.departmentid

--14.Find city & department wise total, average & maximum salaries.
SELECT p.City,d.DepartmentName,SUM(p.Salary),AVG(p.Salary),MAX(p.Salary) 
FROM PERSON p INNER JOIN DEPARTMENT d
ON p.DepartmentID = d.DepartmentID
GROUP BY p.City,d.DepartmentName

--15 Find all persons who does not belongs to any department.
SELECT p.personname FROM person p
LEFT JOIN department d ON p.departmentid = d.departmentid
WHERE departmentname is null;

----------------------------------------PART-C---------------------
---1. Find all departments whose total salary is exceeding 100000.
SELECT p.salary FROM person p
INNER JOIN department d ON p.departmentid = d.departmentid
where salary > 100000;

--2.List all departments who have no persons. 
SELECT d.departmentname FROM person p
INNER JOIN department d ON p.departmentid = d.departmentid
where P.PersonName is null;

--3 List out department names in which more than two persons are working.
select d.DepartmentName from PERSON p inner join 
DEPARTMENT d on p.DepartmentID = d.DepartmentID 
group by d.DepartmentName 
having count(p.PersonID) > 2
--4.Give a 10% increment in the Computer department employee’s salary. (Use Update)
update PERSON set Salary=Salary+(Salary/100*10) 
where DepartmentID = 
(select DepartmentID from DEPARTMENT where DepartmentName = 'Computer')

--5.Calculate Employee Experience in Years, Months & Days with respect to their joining Date.
select PersonName,concat('Years = ',datediff(year,JoiningDate,getdate()),
', Month = ',datediff(month,JoiningDate,getdate()),
', Days = ',datediff(day,JoiningDate,getdate())) from PERSON




