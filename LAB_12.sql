--------------------------------------------------------------------STUDENT--------------------------------------------------------------------

CREATE TABLE STUDENT
(
	RNO INT NOT NULL,
	NAME VARCHAR(50),
	BRANCH VARCHAR(50)
)

INSERT INTO STUDENT VALUES
(101,'RAJU','CE'),
(102,'AMIT','CE'),
(103,'SANJAY','ME'),
(104,'NEHA','EC'),
(105,'MEERA','EE'),
(106,'MAHESH','ME') /* MORE VALUES WILL BE INSERTED USING QUERIES */


--------------------------------------------------------------------RESULT--------------------------------------------------------------------

CREATE TABLE RESULT
(
	RNO INT NOT NULL,
	SPI DECIMAL(4,2) NOT NULL
)

INSERT INTO RESULT VALUES
(101,8.8),
(102,9.2),
(103,7.6),
(104,8.2),
(105,7.0),
(106,8.9),
(107,9.4),
(108,9.2),
(109,8.7),
(110,9.2)

--------------------------------------------------------------------QUERIES--------------------------------------------------------------------

/*12.01*/     CREATE PROCEDURE SPGETALLRECORDS AS BEGIN SELECT * FROM STUDENT LEFT OUTER JOIN RESULT ON STUDENT.RNO = RESULT.RNO END /*'BEGIN' KEYWORD IS OPTIONAL*/

/*12.02*/     CREATE PROCEDURE GETROLLNUMBERDETAILS @RNO INT AS BEGIN SELECT STUDENT.RNO, NAME, BRANCH, RESULT.SPI FROM STUDENT INNER JOIN RESULT ON STUDENT.RNO = RESULT.RNO WHERE STUDENT.RNO = @RNO END
	      EXEC GETROLLNUMBERDETAILS 106

/*12.03*/     CREATE PROCEDURE INSERTARECORD AS BEGIN INSERT INTO STUDENT VALUES (107,'RAJ','EE') END

/*12.04*/     CREATE PROCEDURE UPDATEARECORD AS BEGIN UPDATE STUDENT SET BRANCH = 'EC' WHERE RNO = 105 END

/*12.05*/     CREATE PROCEDURE DELETEARECORD AS BEGIN DELETE FROM STUDENT WHERE RNO = 103 END

--------------------------------------------------------------INSERT MULTIPLE RECORDS--------------------------------------------------------------

CREATE PROCEDURE INSERTRECORDS @RNO INT, @NAME VARCHAR (50), @BRANCH VARCHAR (50) AS BEGIN INSERT INTO STUDENT VALUES (@RNO, @NAME, @BRANCH) END

/*EXECUTION*/     EXEC INSERTRECORDS 108, 'KIRTAN', 'CE'
				  EXEC INSERTRECORDS 109, 'KISHAN', 'CE'
				  EXEC INSERTRECORDS 110, 'MARUT', 'CE'
