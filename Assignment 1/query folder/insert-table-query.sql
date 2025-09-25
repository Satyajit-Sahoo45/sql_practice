-- Insert into STUDENT
-- INSERT INTO student (student_id, first_name, last_name, gpa, enrollment_date, major) VALUES
-- (1, 'John', 'Doe', 3.75, '2022-08-15', 'CSE'),
-- (2, 'Alice', 'Smith', 3.60, '2021-09-10', 'ECE'),
-- (3, 'Bob', 'Johnson', 3.20, '2023-01-05', 'ME'),
-- (4, 'Emma', 'Williams', 3.90, '2020-07-20', 'Mathematics');


-- Insert into PROGRAM
-- INSERT INTO program (student_ref_id, program_name, program_start_date) VALUES
-- (1, 'AI & Machine Learning', '2022-09-01'),
-- (2, 'Power Systems', '2021-10-01'),
-- (3, 'Thermodynamics', '2023-02-01'),
-- (4, 'Statistics', '2020-08-01');


-- Insert into SCHOLARSHIP
INSERT INTO scholarship (student_ref_id, scholarship_amount, scholarship_date) VALUES
(1, 1500.00, '2022-09-15'),
(2, 2000.00, '2021-10-20'),
(3, 1200.00, '2023-02-15'),
(4, 2500.00, '2020-08-20');