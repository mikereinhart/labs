CREATE TABLE students
(
id SERIAL4 PRIMARY KEY,
first VARCHAR(25) NOT NULL,
last VARCHAR(25) NOT NULL,
dob DATE,
gpa FLOAT8
--course_id INT4 REFERENCES courses(id)
--note that course_id is the singular version of the other table, course.
--INT4 relates to the SERIAL4?
);

CREATE TABLE courses
(
id SERIAL4 PRIMARY KEY,
name VARCHAR(50) UNIQUE NOT NULL,
student_id INT4 REFERENCES students(id)
--again, not student is the singular version of the tables name, students.
);

CREATE TABLE students_courses
(
id SERIAL4 PRIMARY KEY,
student_id INT4 REFERENCES students(id),
course_id INT4 REFERENCES courses(id)
);