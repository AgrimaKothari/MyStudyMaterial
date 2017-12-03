# GROUP BY must always follow WHERE clause and must precede the ORDER BY clause
CREATE TABLE students(
rollNo int primary key,
name varchar(40),
subject varchar(40),
age int(30));

INSERT INTO students
VALUES(1014,'Asahg','Science',21);

SELECT * FROM student_info;
# no of students in each subject
SELECT subject, COUNT(*) 
FROM students
GROUP BY subject;
#SUM=total age of students in each subject AVG= for average
SELECT subject, AVG(age)
FROM students
GROUP BY subject;

# DISTINCT and AS keywords
SELECT DISTINCT age AS AGE
FROM students;


CREATE TABLE student_info(
rollNo int primary key,
fatherName varchar(40),
MotherName varchar(40),
hobbies varchar(20)
);

INSERT INTO student_info
VALUES(1012,'Joo','Woo','Running');

#JOINS
SELECT s.rollNo, s.name, s.subject, s.age, i.MotherName, i.fatherName, i.hobbies
FROM students AS s
JOIN student_info AS i
ON s.rollNo = i.rollNo;

SELECT s.rollNo, s.name, s.subject, s.age, i.fatherName, i.MotherName, i.hobbies
FROM students AS s, student_info AS i
WHERE s.rollNo = i.rollNo;

# order by in joins
SELECT i.hobbies, ROUND(AVG(s.age),2)
FROM students AS s
JOIN student_info AS i
ON s.rollNo = i.rollNo
GROUP BY hobbies;
