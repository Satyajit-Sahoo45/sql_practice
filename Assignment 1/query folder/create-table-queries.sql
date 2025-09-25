-- CREATE TABLE student
-- (
-- 	student_id  int8 PRIMARY KEY,
-- 	first_name varchar(50) NOT NULL,
-- 	last_name varchar(50) NOT NULL,
-- 	gpa Decimal(3, 2) NOT NULL,
-- 	enrollment_date Date NOT NULL,
-- 	major varchar(20) NOT NULL
-- )



-- CREATE TABLE program 
-- (
-- 	student_ref_id int8,
-- 	program_name varchar(50) NOT NULL,
-- 	program_start_data Date NOT NULL,
-- 	FOREIGN KEY (student_ref_id) REFERENCES student(student_id)
-- )



CREATE TABLE scholarship
(
	student_ref_id int8,
	scholarship_amount Decimal(10, 2) NOT NULL,
	scholarship_date Date NOT NULL,
	FOREIGN KEY (student_ref_id) REFERENCES student(student_id)
)