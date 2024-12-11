#answer1 -Get all the names of students in the database
SELECT name FROM students;
#answer2-Get all the data of students above 30 years old
SELECT * FROM students WHERE age > 30;
#answer3-Get the names of the females who are 30 years old
SELECT Name FROM students WHERE Age = 30 AND Gender = 'F';
#answer4-Get the number of Points of Alex
SELECT Points FROM students WHERE Name = 'Alex';
#answer5-Add yourself as a new student (your name, your age...)
INSERT INTO students (ID,Name, Age, Gender, Points)
VALUES (6,'Zahraa', 22, 'Female', 130);
#answer6-Increase the points of Basma because she solved a new exercise
UPDATE students
SET Points = Points + 23
WHERE Name = 'Basma';
#answer7-Decrease the points of Alex because he's late today
UPDATE students
SET Points = Points - 14
WHERE Name = 'Alex';


#creating table graduates
CREATE TABLE graduates (
    ID INTEGER PRIMARY KEY AUTOINCREMENT,
    Name TEXT NOT NULL UNIQUE,
    Age INTEGER,
    Gender TEXT,
    Points INTEGER,
    Graduation Text
);



#add layal's data
INSERT INTO graduates (Name, Age, Gender, Points)
SELECT Name, Age, Gender, Points FROM students WHERE name = 'Layal';

#add layal's graduation date
UPDATE graduates 
SET Graduation = '2018-09-08' 
WHERE Name = 'Layal';

#remove layal's data
DELETE FROM students WHERE Name = 'Layal';


#joins
SELECT Employees.Name AS EmployeeName, Companies.Name AS CompanyName, Companies.Date 
FROM Employees 
JOIN Companies ON Employees.Company = Companies.Name;


#Names for employees who worked before 2000
SELECT Employees.Name 
FROM Employees 
JOIN Companies ON Employees.Company = Companies.Name
WHERE Companies.Date < '2000-01-01';


##name of company that has graphic designer
SELECT Companies.Name 
FROM Employees 
JOIN Companies ON Employees.Company = Companies.Name
WHERE Employees.Role = 'Graphic Designer';
