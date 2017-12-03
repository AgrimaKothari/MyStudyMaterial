create database Practice;
use Practice;

CREATE TABLE employee(
id int primary key,
name varchar(10),
dob datetime,
email varchar(40)
);

#get details of table
DESC employee;

DESCRIBE employee;
# new tabe from existing table
CREATE TABLE student AS 
SELECT id,name FROM employee;

SHOW TABLES;

#drop table
DROP TABLE student;

INSERT INTO employee (id,name,dob,email)
VALUES (1001,'jack','1990-11-11 12:12:12','jack@gmail.com');

INSERT INTO employee (id,name,email,dob)
VALUES (1002,'john','john@gmail.com','1990-07-11 12:12:12');

INSERT INTO employee 
VALUES (1003,'Ana','1998-07-25 17:12:12','ana@gmail.com');

SELECT * FROM employee;

CREATE TABLE emp_info(
id int,
name varchar(40),
dob datetime,
email varchar(50));
 
SELECT * FROM emp_info;
DROP TABLE emp_info;
#insert data from one table to another
INSERT INTO emp_info 
SELECT id,name,dob,email
FROM employee; 

SELECT * from emp_info;
#Operators
#Arithmatic operation
SELECT 5+10;
SELECT 15-10;
SELECT 15/5;
SELECT 5*4;
SELECT 10%3;
# conditional operations <>,=,<,>
# add column in existing table
ALTER TABLE emp_info 
ADD age int;

ALTER TABLE emp_info 
DROP dob;
 
#Operators
SELECT * FROM emp_info WHERE age IS NULL;
SELECT * FROM emp_info WHERE name LIKE 'j%';
SELECT * FROM emp_info WHERE id IN (1001,1003);
SELECT * FROM emp_info WHERE id BETWEEN 1002 AND 1003;
SELECT * FROM emp_info WHERE id >ALL(SELECT id FROM emp_info WHERE name LIKE 'j%');

# WHERE can be used with UPDATE DELETE and SELECT
UPDATE emp_info SET age =25 WHERE id =1001;
DELETE FROM emp_info WHERE id IS NULL;

# wild cards '_' one character or number '%' 0 or many
# to specify limited no of rows in rsponse
SELECT * FROM emp_info LIMIT 2;

#Order by ASC/DESC
SELECT * FROM emp_info ORDER BY name ASC;
SELECT * FROM emp_info ORDER BY name DESC;

SELECT * FROM emp_info ORDER BY name;

#TRUNCATE-> not possible to retainback data; space freed
# different from DELETE. In delete data can be recovered; 
TRUNCATE TABLE employee;

#Subquery -> query inside query

#Structure of table instead of values of table
ALTER TABLE employee ADD city CHAR(40);
SELECT * FROM employee;
ALTER TABLE employee DROP city; 
ALTER TABLE employee MODIFY email CHAR(50) NOT NULL;
ALTER TABLE employee MODIFY id int AUTO_INCREMENT;
INSERT INTO employee VALUES('5412','jack','1998-02-12 21:22:23','jacky@gmail.com');

DESC employee;