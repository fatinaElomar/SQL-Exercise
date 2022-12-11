Problem 1. Get all the names of students in the database :
Answer: 
SELECT name FROM students;


Problem 2. Get all the data of students above 30 years old 
Answer: 
SELECT name FROM students 
WHERE Age > 30;


Problem 3. Get the names of the females who are 30 years old
Answer: 
SELECT name FROM students
WHERE Age=30 AND Gender='F';


Problem 4. Get the number of Points of Alex 
Answer: 
SELECT Points FROM students 
WHERE name="Alex" ;


Problem 5. Add yourself as a new student (your name, your age...)
Answer: 
INSERT INTO students (name, Age, Gender,Points)
VALUES ("Fatina", "26", "f","300"); 



Problem  6. Increase the points of Basma because she solved a new exercise.
Answer: 
UPDATE students
SET Points='400'
WHERE name ="Basma";


Problem 7. Decrease the points of Alex because he is late today.
Answer: 
UPDATE students
SET  Points='50'
WHERE name ="Alex";

8-update answers
9-commit

Problem 10. Copy Layal data from students to graduates.
Answer: 
INSERT INTO graduates
(id , name, Age , Gender,Points)
SELECT * FROM students 
WHERE name="Layal";

Problem 11. :Add the graduation date previously mentioned to Layal record in graduates
Answer: 
UPDATE graduates
SET Graduation ="08/09/2018"
WHERE name ="Layal";

Problem 12. Remove Layal record from students
Answer: 
DELETE FROM students WHERE name='Layal'; 



Problem 14. Produce a table that contains, for each employee, his/her name, company name, and company date.
Answer:
select employees.Name ,employees.Company , companies.date
from employees , companies 
WHERE employees.Company=companies.name;

problem 15. Find the name of employees that work in companies made before 2000.
Answer:
SELECT employees.name 
FROM employees INNER JOIN companies ON employees.Company=companies.Name
WHERE companies.Date<"2000";


problem 16.Find the name of company that has a graphic designer.
Answer:
select companies.Name 
FROM companies INNER join employees on employees.Company=companies.Name
WHERE Role="Graphic Designer";

17-commit

problem 18.Find the person with the highest number of points in students
Answer:
SELECT Name FROM STUDENTS 
WHERE Points=(SELECT max(points) FROM students);


problem 19.Find the average of points in students
Answer:
SELECT avg ("Points") FROM students;


problem 20.Find the number of students that have 500 points
Answer:
SELECT count(ID) FROM students 
WHERE Points="500";


problem 21.Find the names of students that contains 's'
Answer:
SELECT name FROM students 
WHERE name like "%s%";


problem 22.Find all students based on the decreasing order of their points
Answer:
SELECT * FROM students 
ORDER BY Points DESC;
 
 23-commit