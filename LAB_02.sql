------------------------------------------ CREATING DEPOSIT ------------------------------------------


CREATE TABLE DEPOSIT
(
	 ACTNO int,
	 CNAME varchar(50) ,
	 BNAME varchar(50) ,
	 AMOUNT decimal(8,2) ,
	 ADATE datetime
)
INSERT INTO DEPOSIT VALUES(101,'ANIL','VRCE',1000,'1995-03-01')
INSERT INTO DEPOSIT VALUES(102,'SUNIL','AJNI',5000,'1996-01-04')
INSERT INTO DEPOSIT VALUES(103,'MEHUL','KAROLBAGH',3500,'1995-11-17')
INSERT INTO DEPOSIT VALUES(104,'MADHURI','CHANDI',1200,'1995-12-17')
INSERT INTO DEPOSIT VALUES(105,'PRAMOD','M.G.ROAD',3000,'1996-03-27')
INSERT INTO DEPOSIT VALUES(106,'SANDIP','ANDHERI',2000,'1996-03-31')
INSERT INTO DEPOSIT VALUES(107,'SHIVANI','VIRAR',1000,'1995-09-05')
INSERT INTO DEPOSIT VALUES(108,'KRANTI','NEHRU PLACE',5000,'1995-07-02')
INSERT INTO DEPOSIT VALUES(109,'MINU','POWAI',7000,'1995-08-10')


------------------------------------------ CREATING BRANCH ------------------------------------------


CREATE TABLE BRANCH
(
	BNAME VARCHAR(50),
	CITY VARCHAR(50)
)
INSERT INTO BRANCH VALUES('VRCE','NAGPUR')
INSERT INTO BRANCH VALUES('AJNI','NAGPUR')
INSERT INTO BRANCH VALUES('KAROLBAGH','DELHI')
INSERT INTO BRANCH VALUES('CHANDI','DELHI')
INSERT INTO BRANCH VALUES('DHARAMPETH','NAGPUR')
INSERT INTO BRANCH VALUES('M.G.ROAD','BANGLORE')
INSERT INTO BRANCH VALUES('ANDHERI','BOMBAY')
INSERT INTO BRANCH VALUES('VIRAR','BOMBAY')
INSERT INTO BRANCH VALUES('NEHRU PLACE','DELHI')
INSERT INTO BRANCH VALUES('POWAI','BOMBAY')


------------------------------------------ CREATING CUSTOMER ------------------------------------------


CREATE TABLE CUSTOMERS
(
	CNAME VARCHAR(50),
	CITY VARCHAR(50)
)
INSERT INTO CUSTOMERS VALUES('ANIL','CALCUTTA')
INSERT INTO CUSTOMERS VALUES('SUNIL','DELHI')
INSERT INTO CUSTOMERS VALUES('MEHUL','BARODA')
INSERT INTO CUSTOMERS VALUES('MANDAR','PATNA')
INSERT INTO CUSTOMERS VALUES('MADHURI','NAGPUR')
INSERT INTO CUSTOMERS VALUES('PRAMOD','NAGPUR')
INSERT INTO CUSTOMERS VALUES('SANDIP','SURAT')
INSERT INTO CUSTOMERS VALUES('SHIVANI','BOMBAY')
INSERT INTO CUSTOMERS VALUES('KRANTI','BOMBAY')
INSERT INTO CUSTOMERS VALUES('NAREN','BOMBAY')


------------------------------------------ CREATING BORROW ------------------------------------------


CREATE TABLE BORROW
(
	LOANNO INT,
	CNAME VARCHAR(50),
	BNAME VARCHAR(50),
	AMOUNT DECIMAL(8,2)
)
INSERT INTO BORROW VALUES(201,'ANIL','VRCE',1000)
INSERT INTO BORROW VALUES(206,'MEHUL','AJNI',5000)
INSERT INTO BORROW VALUES(311,'SUNIL','DHARAMPETH',3000)
INSERT INTO BORROW VALUES(321,'MADHURI','ANDHERI',2000)
INSERT INTO BORROW VALUES(375,'PRAMOD','VIRAR',8000)
INSERT INTO BORROW VALUES(481,'KRANTI','NEHRU PLACE',3000)


------------------------------------------ 2.1 ------------------------------------------


/*2.1.01*/   SELECT * FROM DEPOSIT

/*2.1.02*/   SELECT * FROM BORROW

/*2.1.03*/   SELECT * FROM CUSTOMERS

/*2.1.04*/   SELECT ACTNO, CNAME, AMOUNT FROM DEPOSIT

/*2.1.05*/   SELECT LOANNO, AMOUNT FROM BORROW

/*2.1.06*/   SELECT * FROM BORROW WHERE BNAME = 'ANDHERI'

/*2.1.07*/   SELECT ACTNO, AMOUNT FROM DEPOSIT WHERE ACTNO = 106

/*2.1.08*/   SELECT * FROM BORROW WHERE AMOUNT > 5000

/*2.1.09*/   SELECT CNAME FROM DEPOSIT WHERE ADATE > '1996-12-1'

/*2.1.10*/   SELECT CNAME FROM DEPOSIT WHERE ACTNO < 105

/*2.1.11*/   SELECT CNAME FROM CUSTOMERS WHERE CITY='NAGPUR' OR CITY='DEHI'  /*--OR--*/  SELECT CNAME FROM CUSTOMERS WHERE CITY IN('NAGPUR','DEHI')

/*2.1.12*/   SELECT CNAME, BNAME FROM DEPOSIT WHERE AMOUNT > 4000 AND ACTNO < 105

/*2.1.13*/   SELECT CNAME FROM BORROW WHERE AMOUNT >= 3000 AND AMOUNT <= 8000  /*--OR--*/  SELECT CNAME FROM BORROW WHERE AMOUNT BETWEEN 3000 AND 8000

/*2.1.14*/   SELECT * FROM DEPOSIT WHERE BNAME <> 'ANDHERI'

/*2.1.15*/   SELECT CNAME FROM BORROW WHERE AMOUNT IS NULL

/*2.1.16*/   SELECT ACTNO, CNAME, AMOUNT FROM DEPOSIT WHERE BNAME IN ('AJNI', 'KAROLBAGH', 'M.G.ROAD') AND ACTNO < 104

/*2.1.17*/   SELECT TOP 5 * FROM CUSTOMERS

/*2.1.18*/   SELECT TOP 3 * FROM DEPOSIT WHERE AMOUNT > 1000

/*2.1.19*/   SELECT TOP 5 LOANNO, CNAME FROM BORROW WHERE BNAME <> 'ANDHERI'

/*2.1.20*/   SELECT DISTINCT CITY FROM CUSTOMERS

/*2.1.21*/   SELECT DISTINCT BNAME FROM BRANCH

/*2.1.22*/   SELECT * FROM CUSTOMERS ORDER BY CITY

/*2.1.23*/   SELECT * FROM DEPOSIT ORDER BY AMOUNT DESC

/*2.1.24*/   SELECT * FROM CUSTOMERS ORDER BY CITY DESC

/*2.1.25*/   SELECT DISTINCT CNAME AS UNI_BORROWERS FROM BORROW


------------------------------------------ 2.2 ------------------------------------------


/*2.2.01*/   UPDATE DEPOSIT SET AMOUNT = '5000' WHERE AMOUNT = '3000'

/*2.2.02*/   UPDATE BORROW SET BNAME = 'C.G.ROAD' WHERE CNAME = 'ANIL' AND BNAME = 'VRCE'

/*2.2.03*/   UPDATE DEPOSIT SET ACTNO = 111 , AMOUNT = 5000 WHERE CNAME = 'SANDIP'

/*2.2.04*/   UPDATE BORROW SET AMOUNT = AMOUNT + (0.1 * AMOUNT)

/*2.2.05*/   UPDATE DEPOSIT SET AMOUNT = 5000 WHERE ACTNO > 103 AND ACTNO < 107

/*2.2.06*/   UPDATE BORROW SET AMOUNT = NULL WHERE LOANNO = 321

/*2.2.07*/   UPDATE BORROW SET LOANNO = 401 , BNAME = 'AJNI' WHERE LOANNO = 201 AND BNAME = 'VRCE'

/*2.2.08*/   UPDATE CUSTOMERS SET CNAME = 'ANIL JAIN' WHERE CNAME = 'ANIL'

/*2.2.09*/   UPDATE DEPOSIT SET CNAME = 'RAMESH' , BNAME = 'VRCE' , AMOUNT = 5000 WHERE ACTNO = 102

/*2.2.10*/   UPDATE BORROW SET BNAME = NULL , AMOUNT = NULL WHERE LOANNO = 481 AND CNAME = 'KRANTI'


------------------------------------------ 2.3 ------------------------------------------


/*2.3.01*/   DELETE FROM CUSTOMERS WHERE CITY = 'BOMBAY'

/*2.3.02*/   DELETE FROM DEPOSIT WHERE AMOUNT <= 1000

/*2.3.03*/   DELETE FROM BORROW WHERE BNAME = 'AJNI'

/*2.3.04*/   DELETE FROM BORROW WHERE LOANNO > 201 AND LOANNO < 210

/*2.3.05*/   DELETE FROM DEPOSIT WHERE ADATE > '1996-12-01'

/*2.3.06*/   TRUNCATE TABLE CUSTOMERS

/*2.3.07*/   DELETE FROM DEPOSIT WHERE CNAME = 'ANIL' AND ACTNO = 101

/*2.3.08*/   DELETE FROM DEPOSIT WHERE BNAME <> 'ANDHERI'

/*2.3.09*/   DELETE FROM BORROW WHERE AMOUNT < 2000 AND BNAME <> 'VRCE'

/*2.3.10*/   DROP TABLE BRANCH