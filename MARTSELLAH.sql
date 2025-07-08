DROP DATABASE IF EXISTS edu_institute;
CREATE DATABASE edu_institute;
USE edu_institute;
CREATE TABLE students (
    student_id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    gender CHAR(1),
    enrollment_date DATE,
    program VARCHAR(50)
);
INSERT INTO students (student_id, name, age, gender, enrollment_date, program) VALUES
(1, 'Alice Mwangi', 22, 'F', '2023-09-01', 'Data Science'),
(2, 'Brian Otieno', 25, 'M', '2023-08-15', 'Artificial Intelligence'),
(3, 'Cynthia Wanjiru', 23, 'F', '2023-07-20', 'Cybersecurity'),
(4, 'David Kimani', 21, 'M', '2023-09-05', 'Software Engineering'),
(5, 'Esther Njeri', 24, 'F', '2023-08-10', 'Data Science');
SELECT * 
FROM students 
WHERE program = 'Data Science';
SELECT CURRENT_DATE() AS "Today's Date";
SELECT UPPER(name) AS student_name_upper, enrollment_date
FROM students
WHERE enrollment_date IS NOT NULL;
SELECT program, COUNT(*) AS total_students
FROM students
GROUP BY program;
SELECT name, age
FROM students
ORDER BY age ASC
LIMIT 1;
