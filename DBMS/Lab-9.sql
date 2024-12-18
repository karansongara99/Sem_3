-- Table Creation for CITY
CREATE TABLE CITY (
    CityID INT PRIMARY KEY,
    Name NVARCHAR(50) UNIQUE NOT NULL,
    Pincode NVARCHAR(6) NOT NULL,
    Remarks NVARCHAR(50)
);

INSERT INTO CITY (CityID, Name, Pincode, Remarks) VALUES
(1, 'Rajkot', '360005', 'Good'),
(2, 'Surat', '335009', 'Very Good'),
(3, 'Baroda', '390001', 'Awesome'),
(4, 'Jamnagar', '361003', 'Smart'),
(5, 'Junagadh', '362229', 'Historic'),
(6, 'Morvi', '363641', 'Ceramic');

-- Table Creation for VILLAGE
CREATE TABLE VILLAGE (
    VID INT PRIMARY KEY,
    Name VARCHAR(50) NOT NULL,
    CityID INT,
    FOREIGN KEY (CityID) REFERENCES CITY(CityID)
);

DROP TABLE VILLAGE

INSERT INTO VILLAGE (VID, Name, CityID) VALUES
(101, 'Raiya', 1),
(102, 'Madhapar', 1),
(103, 'Dodka', 3),
(104, 'Falla', 4),
(105, 'Bhesan', 5),
(106, 'Dhoraji', 5);

SELECT * FROM VILLAGE;

--1. Display all the villages of Rajkot city. 
SELECT c.Name FROM VILLAGE v INNER JOIN CITY c
ON v.CityID = c.CityID
WHERE c.Name = 'Rajkot'

--2.Display city along with their villages & pin code.
SELECT c.Name,v.Name,c.Pincode FROM VILLAGE v INNER JOIN CITY c
ON c.CityID = v.CityID
GROUP BY c.Name,v.Name,c.Pincode

--3. Display the city having more than one village.						 -------DOUNTSELECT c.Name,v.Name FROM VILLAGE v INNER JOIN CITY c
ON c.CityID = v.CityID
WHERE v.Name >= 1
GROUP BY c.Name,v.Name

--4. Display the city having no village									----------- DOUBT
SELECT c.Name FROM VILLAGE v INNER JOIN CITY c
ON c.CityID = v.CityID
GROUP BY c.Name
HAVING v.Name NOT NULL;

--5.Count the total number of villages in each city
SELECT c.Name,COUNT(v.Name) FROM VILLAGE v INNER JOIN CITY c
ON v.CityID = c.CityID
GROUP BY c.Name,v.Name

--6. Count the number of cities having more than one village             ---------DOUBT 
SELECT COUNT(c.Name) FROM VILLAGE v INNER JOIN CITY c
ON v.CityID = c.CityID
GROUP BY c.Name


-------------------Create below table Student with following constraints------------

--1. Do not allow SPI more than 10 and less than 0.
--2. Do not allow Bklog less than 0.
--3. Enter the default value as ‘General’ in branch to all new records IF no other value is specified.

CREATE TABLE Student (
    Rno INT PRIMARY KEY,
    Name NVARCHAR(50),
	Branch NVARCHAR(50) DEFAULT 'General',
    SPI FLOAT CHECK (SPI BETWEEN 0 AND 10),
    Bklog INT CHECK (Bklog >= 0), 
);

INSERT INTO Student(Rno,Name,SPI,Bklog,Branch) VALUES (101,'Raju','CE',8.80,0);
INSERT INTO Student(Rno,Name,SPI,Bklog,Branch) VALUES (102,'Amit','CE',8.80,3);
INSERT INTO Student(Rno,Name,SPI,Bklog,Branch) VALUES (103,'Sanjay','ME',8.80,6);
INSERT INTO Student(Rno,Name,SPI,Bklog,Branch) VALUES (104,'Neha','EC',8.80,0);
INSERT INTO Student(Rno,Name,SPI,Bklog,Branch) VALUES (105,'Meera','EE',8.80,2);
INSERT INTO Student(Rno,Name,SPI,Bklog,Branch) VALUES (106,'Mahesh','GENERAL',8.80,3);

--► Try to update SPI of Raju from 8.80 to 12
update STUDENT set SPI= 12 where Name='Raju'

--► Try to update Bklog of Neha from 0 to -1.
update STUDENT set Bklog=-1 where Name='Neha'


----------------------------------------PART - B------------------------------
CREATE TABLE EMP
(Eid INT PRIMARY KEY,
Ename VARCHAR(50),
Did INT REFERENCES Dept(Did),
Cid INT REFERENCES City(Cid),
Salary INT NOT NULL,
Experience INT NOT NULL
);

CREATE TABLE Dept
(Did INT PRIMARY KEY,
Dname VARCHAR(50)
);

CREATE TABLE City
(Cid INT PRIMARY KEY,
Cname VARCHAR(50)
);

-----------------------------------PART-C------------------
CREATE TABLE EMP
(Eid INT PRIMARY KEY,
Ename VARCHAR(50),
Did INT REFERENCES Dept(Did),
Cid INT REFERENCES City(Cid),
Salary INT NOT NULL,
Experience INT NOT NULL
);

CREATE TABLE Dept
(Did INT PRIMARY KEY,
Dname VARCHAR(50)
);

CREATE TABLE City
(Cid INT PRIMARY KEY,
Cname VARCHAR(50)
);

CREATE TABLE District
(Did INT PRIMARY KEY,
Dname VARCHAR(50)
);

CREATE TABLE State
(Sid INT PRIMARY KEY,
Sname VARCHAR(50)
);

CREATE TABLE Country
(Cid INT PRIMARY KEY,
Cname VARCHAR(50)
);






