CREATE TABLE STUDENTS
(
	STUID INT,
	FIRSTNAME VARCHAR(50),
	LASTNAME VARCHAR(50),
	WEBSITE VARCHAR(50),
	CITY VARCHAR(50),
	DIVISION VARCHAR(50)
)

INSERT INTO STUDENTS VALUES
(1011,'KEYUR','PATEL','TECHONTHENET.COM','RAJKOT','II-BCX'),
(1022,'HARDIK','SHAH','DIGIMINECRAFT.COM','AHMEDABAD','I-BCY'),
(1033,'KAJAL','TRIVEDI','BIGACTIVITIES.COM','BARODA','IV-DCX'),
(1044,'BHOOMI','GAJERA','CHECKYOURMATH.COM','AHMEDABAD','III-DCW'),
(1055,'HARMIT','MITAL',NULL,'RAJKOT','II-BCY'),
(1066,'ASHOK','JANI',NULL,'BARODA','II-BCZ')





/*5.01*/   SELECT * FROM STUDENTS WHERE FIRST_NAME LIKE 'K%'
/*5.02*/   SELECT * FROM STUDENTS WHERE FIRST_NAME LIKE '_____'
/*5.03*/   SELECT * FROM STUDENTS WHERE CITY LIKE '_____A'
/*5.04*/   SELECT * FROM STUDENTS WHERE LAST_NAME LIKE '%TEL'
/*5.05*/   SELECT * FROM STUDENTS WHERE FIRST_NAME LIKE 'HA%T'
/*5.06*/   SELECT * FROM STUDENTS WHERE FIRST_NAME LIKE 'K_Y%'
/*5.07*/   SELECT * FROM STUDENTS WHERE FIRST_NAME LIKE '_____' AND WEBSITE IS NULL
/*5.08*/   SELECT * FROM STUDENTS WHERE LAST_NAME LIKE '%JER%'
/*5.09*/   SELECT * FROM STUDENTS WHERE CITY LIKE 'R%' OR CITY LIKE 'B%'
/*5.10*/   SELECT * FROM STUDENTS WHERE WEBSITE IS NOT NULL
/*5.11*/   SELECT * FROM STUDENTS WHERE FIRST_NAME LIKE '[A - H]%'
/*5.12*/   SELECT * FROM STUDENTS WHERE FIRST_NAME LIKE '_[A,E,I,O,U]%'
/*5.13*/   SELECT * FROM STUDENTS WHERE CITY LIKE '%ROD%'
/*5.14*/   SELECT * FROM STUDENTS WHERE WEBSITE LIKE 'BI%'
/*5.15*/   SELECT * FROM STUDENTS WHERE LAST_NAME LIKE '______'
/*5.16*/   SELECT * FROM STUDENTS WHERE CITY LIKE '_____' AND CITY NOT LIKE 'BI%'
/*5.17*/   SELECT * FROM STUDENTS WHERE DIVISION LIKE 'II%'
/*5.18*/   SELECT * FROM STUDENTS WHERE DIVISION LIKE '%BC%'
/*5.19*/   SELECT * FROM STUDENTS WHERE DIVISION LIKE '______' AND WEBSITE IS NOT NULL
/*5.20*/   SELECT * FROM STUDENTS WHERE FIRST_NAME NOT LIKE '__[A,E,I,O,U]%'
