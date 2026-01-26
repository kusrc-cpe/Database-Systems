-- 1
SELECT e.Name AS 'Employee Name', d.name AS Department, e.Salary, FLOOR(e.Salary * 0.95 - 750) AS 'Net Salary'
FROM Employee e
INNER JOIN Department d USING (Department_ID);
-- 2
SELECT e.Name, e.Job AS Position, d.Name AS Department, e.Salary, s.Skill
FROM Employee e
INNER JOIN Department d USING (Department_ID)
INNER JOIN Employee_Skill s USING (Employee_ID)
WHERE d.Name = 'Research and Development' and e.Salary >= 20000;
-- 3
SELECT distinct e.Employee_ID AS EmployeeID, e.Name AS 'Employee Name', e.Salary, d.Name AS Department
FROM Employee e
INNER JOIN Department d USING (Department_ID)
INNER JOIN Employee_Skill s USING (Employee_ID)
WHERE s.Skill = 'Java' OR d.Name = 'Marketing';
-- 4
SELECT 
	CONCAT(e.Employee_ID, ' - ', UPPER(e.Name)) AS 'ID   - Name',
	REPLACE(LOWER(d.Name), 'research and development', 'R & D') AS Department
FROM Employee e
INNER JOIN Department d USING (Department_ID);
-- 5
SELECT 
	c.Name AS 'Client Name',
	length(c.Name) AS 'Length(Client Name)',
	e.Name AS 'Employee Name',
	DATE_FORMAT(DATE_ADD(a.Work_Date, interval 543 YEAR), '%d-%m-%Y') AS 'Work Date'
FROM Client c
INNER JOIN Assignment a USING (Client_ID)
INNER JOIN Employee e ON a.Employee_ID = e.Employee_ID;
-- 6
SELECT Employee_ID, UPPER(REPLACE(Name, 'Som', '')) AS 'Nick Name', LOWER(LEFT(Job, 1)) AS Job
FROM Employee
WHERE Name LIKE 'Som%';
-- 7
SELECT
	REPLACE(Job, 'DBA', 'Database Administrator') AS Job,
	SUM(Salary) AS Sum,
	FLOOR(AVG(Salary)) AS Average,
	MIN(Salary) AS Min,
	MAX(Salary) AS Max
FROM Employee
GROUP BY Job
ORDER BY Job;
-- 8
SELECT e.Name, count(s.Skill) AS 'Number of Skills'
FROM Employee e
INNER JOIN Employee_Skill s USING (Employee_ID)
GROUP BY e.Employee_ID
HAVING count(s.Skill) >= 2;
-- 9
SELECT
	Name,
	Salary,
	(SELECT FLOOR(AVG(Salary)) FROM Employee) AS 'Average Salary FROM All Employees',
	Salary - (SELECT FLOOR(AVG(Salary)) FROM Employee) AS 'Salary-Average'
FROM Employee
WHERE Salary > (SELECT FLOOR(AVG(Salary)) FROM Employee);
-- 10
SELECT 
	Name AS 'Employee Name',
	Salary AS 'Employee Salary',
	(SELECT FLOOR(AVG(e.Salary)) FROM Employee e WHERE e.Department_ID = Department_ID) AS 'Average Salary for each Department'
FROM Employee;