-- Done by Carlos Amaral (2021/03/10)

-- JOIN exercises

CREATE TABLE students (
id INT AUTO_INCREMENT PRIMARY KEY,
first_name VARCHAR(100)
);

CREATE TABLE papers(
title VARCHAR(100),
grade VARCHAR(100),
student_id INT,
FOREIGN KEY(student_id) REFERENCES students(id)
);


/* Select first_name, title and grade columns. Only show authors students
with titles. */
SELECT first_name, title, grade FROM students
JOIN papers ON students.id = papers.student_id
ORDER BY grade DESC;

-- The same as before, but now only show authors with titles 
SELECT first_name, title, grade FROM students
LEFT JOIN papers
ON students.id = papers. student_id;


/* The same as before, but replace title "NULL" elements as 'Missing'  and 
"NULL" grade elements as "0". */
SELECT first_name, IFNULL(title, 'MISSING') AS title, 
IFNULL(grade, '0') AS grade
FROM students LEFT JOIN papers
ON students.id = papers.student_id;

/* Select first_name, and create a column called "average" that returns 
the average of the grades for each author */
SELECT first_name, IFNULL(AVG(grade), 0) AS average
FROM students LEFT JOIN papers
ON students.id = papers.student_id
GROUP BY students.id ORDER BY average DESC;


/* Select the same as before, but add a new column called passing status that 
shows "PASSING" for averages greater than 75 and failing for grades below 75
*/
SELECT first_name,
IFNULL(AVG(grade), 0) AS average,
CASE WHEN AVG(grade) IS NULL THEN 'FAILING'
WHEN AVG(grade) >= 75 THEN 'PASSING'
ELSE 'FAILING' END AS passing_status
FROM students LEFT JOIN papers
ON students.id = papers.student_id
GROUP BY students.id = ORDER BY average DESC;

