-- ANS-1
-- SELECT UPPER(first_name) as STUDENT_NAME FROM student;

-- AND-2
-- SELECT DISTINCT major FROM student;

-- ANS-3
-- SELECT SUBSTR(first_name, 1, 3) FROM student

-- ANS-4
-- SELECT first_name, POSITION('a' IN first_name) AS position_of_a 
-- FROM student WHERE first_name='Shivansh';

-- ANS-5
-- SELECT DISTINCT major, LENGTH(major) FROM student;

-- ANS-6
-- SELECT REPLACE(first_name, 'a', 'A') FROM student;

-- ANS-7
-- SELECT CONCAT(first_name, ' ', last_name) as COMPLETE_NAME 
-- FROM student;

-- ANS-8
-- SELECT * FROM student ORDER BY first_name ASC, major DESC;

-- ANS-9
-- SELECT * FROM student 
-- WHERE first_name IN ('Shivansh', 'Prem');

-- ANS-10
-- SELECT * FROM student
-- WHERE first_name NOT IN ('Shivansh', 'Prem');

-- ANS-11
-- SELECT * FROM student WHERE first_name LIKE '%a';

-- ANS-12
-- SELECT * FROM student 
-- WHERE first_name LIKE '%a' AND LENGTH(first_name)=6;

-- ANS-13
-- SELECT * FROM student 
-- WHERE gpa BETWEEN 6.00 AND 9.99;

-- ANS-14
-- SELECT COUNT(*) FROM student WHERE major='CSE';

-- ANS-15
-- SELECT CONCAT(first_name, ' ', last_name) 
-- FROM student WHERE gpa >= 5 AND gpa<=9.5;

-- ANS-16
-- SELECT major, COUNT(*) as Total
-- FROM STUDENT
-- GROUP BY major ORDER BY Total DESC;

-- ANS-17
-- SELECT stu.first_name, stu.last_name, ss.scholarship_amount, ss.scholarship_date
-- FROM student stu
-- JOIN scholarship ss
-- ON stu.student_id = ss.student_ref_id;

-- ANS-18
-- SELECT * FROM student
-- WHERE MOD(student_id, 2)=1;

-- ANS-19
-- SELECT * FROM student
-- WHERE MOD(student_id, 2)=0;

-- ANS-20
-- SELECT * FROM student std
-- LEFT JOIN scholarship sc
-- ON std.student_id = sc.student_ref_id;

-- ANS-21
-- SELECT * FROM student
-- ORDER BY gpa DESC
-- LIMIT 5;

-- ANS-22
-- SELECT * FROM student
-- ORDER BY gpa DESC
-- LIMIT 1 OFFSET 4;

-- ANS-23
-- SELECT gpa 
-- FROM student s1
-- WHERE 4 = (
-- 	SELECT COUNT(DISTINCT gpa)
-- 	FROM student s2
-- 	WHERE s2.gpa > s1.gpa
-- );

--ANS-24
-- SELECT DISTINCT s1.* 
-- FROM student s1
-- JOIN student s2
-- ON s1.gpa = s2.gpa AND s1.student_id != s2.student_id;

-- SELECT gpa, COUNT(*) AS Total
-- FROM student
-- GROUP BY gpa
-- HAVING COUNT(*) > 0;

-- ANS-25
-- SELECT MAX(gpa) AS second_highest_gpa
-- FROM student
-- WHERE gpa < (SELECT MAX(gpa) FROM student);

-- ANS-26
-- SELECT * FROM student LIMIT 1
-- UNION ALL
-- SELECT * FROM student LIMIT 1; 

-- SELECT * FROM (
-- 	SELECT * FROM student LIMIT 1
-- )
-- UNION ALL
-- SELECT * FROM (
-- 	SELECT * FROM student LIMIT 1
-- );


-- ANS-27

-- SELECT *
-- FROM student std
-- LEFT JOIN scholarship sc
-- ON std.student_id = sc.student_ref_id
-- WHERE sc.student_ref_id IS NULL;

-- SELECT * 
-- FROM student
-- WHERE student_id NOT IN (SELECT student_ref_id FROM scholarship);

-- ANS-28
-- SELECT *
-- FROM student
-- LIMIT (
-- 	SELECT CEIL(COUNT(*) / 2) FROM student
-- );

-- ANS-29
-- SELECT major, COUNT(*)
-- FROM student
-- GROUP BY major
-- HAVING COUNT(*) < 4;

-- ANS-30
-- SELECT major, COUNT(*)
-- FROM student
-- GROUP BY major;

-- ANS-31
-- SELECT *
-- FROM student
-- ORDER BY student_id DESC
-- LIMIT 1;

-- ANS-32
-- SELECT *
-- FROM student
-- LIMIT 1;


-- ANS-33
-- SELECT *
-- FROM student
-- ORDER BY student_id DESC
-- LIMIT 5;


-- ANS-34



-- ANS-36
-- SELECT MAX(gpa) AS max_gpa FROM student;


-- ANS-37
-- SELECT major, MAX(gpa)
-- FROM student
-- GROUP BY major;

-- ANS-38
-- SELECT first_name, last_name, gpa
-- FROM student
-- WHERE gpa = (
-- 	SELECT MAX(gpa)
-- 	FROM student
-- );


-- ANS-39
-- SELECT now() AS Current_Date_Time;


-- ANS-40
-- CREATE TABLE StudentCopy AS 
-- SELECT * FROM student;


-- ANS-41
-- UPDATE student
-- SET gpa = 7.5
-- WHERE major='CSE';


-- ANS-42
-- SELECT major, AVG(gpa) 
-- FROM student
-- GROUP BY major;


-- ANS-43
-- SELECT *
-- FROM student
-- ORDER BY gpa DESC
-- LIMIT 3;


-- ANS-44
-- SELECT major, COUNT(*)
-- FROM student
-- WHERE gpa>7.5
-- GROUP BY major;

-- ANS-45
SELECT * 
FROM student
WHERE gpa = (
	SELECT gpa 
	FROM student
	WHERE first_name='Shivansh'
);



