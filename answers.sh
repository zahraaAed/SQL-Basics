#answer1 -Get all the names of students in the database
SELECT name FROM students;
#answer2-Get all the data of students above 30 years old
SELECT * FROM students WHERE age > 30;
#answer3-Get the names of the females who are 30 years old
SELECT Name FROM Students WHERE Age = 30 AND Gender = 'F';
#answer4-Get the number of Points of Alex
SELECT Points FROM Students WHERE Name = 'Alex';
#answer5-Add yourself as a new student (your name, your age...)
INSERT INTO Students (ID,Name, Age, Gender, Points)
VALUES (6,'Zahraa', 22, 'Female', 130);
#answer6-Increase the points of Basma because she solved a new exercise
UPDATE Students
SET Points = Points + 23
WHERE Name = 'Basma';
#answer7-Decrease the points of Alex because he's late today
UPDATE Students
SET Points = Points - 14
WHERE Name = 'Alex';
