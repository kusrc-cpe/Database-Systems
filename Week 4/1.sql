-- 1
SELECT Client_ID, Employee_ID, Work_Date, Hours FROM Assignment WHERE Client_ID IN (1, 2);
-- 2
SELECT Name, Job, Department_ID FROM Employee;
-- 3
SELECT Name AS Company_Name, Contact_Number AS Phone_number FROM Client;
-- 4
SELECT Employee_ID, Job AS Employee_Job, Salary AS Employee_Salary FROM Employee WHERE Salary = 16500;
-- 5
SELECT COUNT(distinct Skill) FROM Employee_Skill;
-- 6
SELECT Skill AS Employee_Skill, Count(Skill) AS Number_of_Skills FROM Employee_Skill GROUP BY Skill;
-- 7
SELECT Employee_ID, COUNT(Skill) AS Number_of_Skills FROM Employee_Skill GROUP BY Employee_ID;
-- 8
SELECT Employee_ID, COUNT(Skill) AS Number_of_Skills FROM Employee_Skill GROUP BY Employee_ID HAVING COUNT(Skill) = 1;
-- 9
SELECT Salary, Name AS Employee_Name FROM Employee ORDER BY Name;
-- 10
SELECT Name, Job, Salary FROM Employee ORDER BY Job DESC, Name DESC;
-- 11
SELECT Employee_ID, Skill FROM Employee_Skill WHERE Skill IN ("NT", "Linux", "JSP", "Java", "DB2", "C") ORDER BY Skill DESC, Employee_ID DESC;
