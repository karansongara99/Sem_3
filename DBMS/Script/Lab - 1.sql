CREATE DATABASE BANK_INFO;

USE BANK_INFO

--Part - A
CREATE TABLE DEPOSIT(
	ACTNO INT,
	CNAME VARCHAR(50),
	BNAME VARCHAR(50),
	AMOUNT DECIMAL(8,2),
	ADATE DATETIME
)

CREATE TABLE BRANCH(
	BNAME VARCHAR(50),
	CITY VARCHAR(50)
)

CREATE TABLE CUSTOMERS(
	CNAME VARCHAR(50),
	CITY VARCHAR(50)
)

CREATE TABLE BORROW(
	LOANNO INT,
	CNAME VARCHAR(50),
	BNAME VARCHAR(50),
	AMOUNT DECIMAL(8,2)
)

INSERT INTO DEPOSIT (ACTNO, CNAME, BNAME, AMOUNT, ADATE) VALUES
(101, 'ANIL', 'VRCE', 1000.00, '1995-03-01'),
(102, 'SUNIL', 'AJNI', 5000.00, '1996-04-01'),
(103, 'MEHUL', 'KAROLBAGH', 3500.00, '1995-11-17'),
(104, 'MADHURI', 'CHANDI', 1200.00, '1995-12-17'),
(105, 'PRMOD', 'M.G. ROAD', 3000.00, '1996-03-27'),
(106, 'SANDIP', 'ANDHERI', 2000.00, '1996-03-31'),
(107, 'SHIVANI', 'VIRAR', 1000.00, '1995-09-05'),
(108, 'KRANTI', 'NEHRU PLACE', 5000.00, '1995-07-02'),
(109, 'MINU', 'POWAI', 7000.00, '1995-08-10');

--SELECT * FROM DEPOSIT

INSERT INTO BRANCH (BNAME, CITY) VALUES
('VRCE', 'NAGPUR'),
('AJNI', 'NAGPUR'),
('KAROLBAGH', 'DELHI'),
('CHANDI', 'DELHI'),
('DHARAMPETH', 'NAGPUR'),
('M.G. ROAD', 'BANGALORE'),
('ANDHERI', 'BOMBAY'),
('VIRAR', 'BOMBAY'),
('NEHRU PLACE', 'DELHI'),
('POWAI', 'BOMBAY');

--SELECT * FROM BRANCH

INSERT INTO CUSTOMERS(CNAME, CITY) VALUES
('ANIL', 'CALCUTTA'),
('SUNIL', 'DELHI'),
('MEHUL', 'BARODA'),
('MANDAR', 'PATNA'),
('MADHURI', 'NAGPUR'),
('PRAMOD', 'NAGPUR'),
('SANDIP', 'SURAT'),
('SHIVANI', 'BOMBAY'),
('KRANTI', 'BOMBAY'),
('NAREN', 'BOMBAY');

--SELECT * FROM CUSTOMERS

INSERT INTO BORROW(LOANNO, CNAME, BNAME, AMOUNT) VALUES
(201, 'ANIL', 'VRCE', 1000.00),
(206, 'MEHUL', 'AJNI', 5000.00),
(311, 'SUNIL', 'DHARAMPETH', 3000.00),
(321, 'MADHURI', 'ANDHERI', 2000.00),
(375, 'PRMOD', 'VIRAR', 8000.00),
(481, 'KRANTI', 'NEHRU PLACE', 3000.00);

-- Part - B

CREATE TABLE STUDENT (
    RollNo INT ,
    Name VARCHAR(50),
    Birthdate DATE,
    SPI DECIMAL(4, 2),
    City VARCHAR(50),
    Backlog INT,
    Branch VARCHAR(10)
);

INSERT INTO STUDENT (RollNo, Name, Birthdate, SPI, City, Backlog, Branch) VALUES
(101, 'Keyur', '1992-01-05', 8.5, 'Rajkot', 2, 'CE'),
(102, 'Hardik', '1994-02-15', 9.0, 'Ahmedabad', 0, 'CE'),
(103, 'Kajal', '1996-03-14', 10.00, 'Baroda', 0, 'IT'),
(104, 'Bhoomi', '1995-06-23', 8.90, 'Ahmedabad', 1, 'ICT'),
(105, 'Harmit', '1994-02-15', 9.80, 'Rajkot', 1, 'IT'),
(106, 'Jay', '1994-02-15', 7.9, 'Rajkot', 2, 'CE');

