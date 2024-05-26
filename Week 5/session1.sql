-- creating database 

CREATE TABLE student_info (

	age INT,
	name text,
	profession text
	
)

-- inserting info into the database

INSERT INTO student_info VALUES(26, 'ahmed', 'Data Scientist')

INSERT INTO student_info VALUES(30, 'mohamed', 'mechanical engineer')

INSERT INTO student_info VALUES(19, 'ibrahim', 'student')

INSERT INTO student_info VALUES(26, 'mark', 'Data Scientist')

-- view my data (select all the data)

SELECT * FROM student_info

-- copying data from existing sheet

CREATE TABLE Customer (
	
	Customer_ID text,
	Name text,
	segmant text,
	Age INT,
	country text, 
	city text

)

COPY customer FROM 'D:\DotPy\Data scince\data extraction\sql\Customer.csv' CSV HEADER

-- view my data (select all the data)

SELECT * FROM customer


-- select some data from the table

SELECT name, age FROM customer
