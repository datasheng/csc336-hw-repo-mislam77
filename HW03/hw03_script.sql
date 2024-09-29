CREATE DATABASE myschool;
USE myschool;

CREATE TABLE student (
    studentId INT PRIMARY KEY,
    name VARCHAR(100),
    age INT,
    department VARCHAR(100)
);

CREATE TABLE course (
    courseID INT PRIMARY KEY,
    name VARCHAR(100),
    credits INT
);

CREATE TABLE enrollment (
    eID INT PRIMARY KEY,
    sID INT,
    cID INT,
    grade VARCHAR(2),
    FOREIGN KEY (sID) REFERENCES student(studentId),
    FOREIGN KEY (cID) REFERENCES course(courseID)
);

INSERT INTO student (studentId, name, age, department)
VALUES (1, 'Alice Johnson', 20, 'Computer Science');

INSERT INTO course (courseID, name, credits)
VALUES (101, 'Introduction to Programming', 3);

INSERT INTO enrollment (eID, sID, cID, grade)
VALUES (1, 1, 101, 'A');

SELECT * FROM student;

SELECT * FROM course;

SELECT * FROM enrollment;