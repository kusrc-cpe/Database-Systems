-- 1
SELECT c.Client_ID, c.Name, a.Client_ID, a.Employee_ID, a.Work_Date
FROM client c, assignment a
ORDER BY a.Client_ID ASC, c.Client_ID ASC;
-- 2
SELECT c.Client_ID, c.Name, a.Client_ID, a.Employee_ID, a.Work_Date
FROM client c, assignment a
WHERE c.Client_ID = a.Client_ID;
-- 3
SELECT e.Employee_ID, e.Name, e.Job, e.Salary, e.Department_ID, s.Skill
FROM employee e, employee_skill s
WHERE e.Employee_ID = s.Employee_ID;
-- 4
SELECT C.Name, C.Address, A.Employee_ID, A.Work_Date, A.Hours
FROM client C, assignment A
WHERE C.Client_ID = A.Client_ID;
-- 5
SELECT e.Name, e.Job, e.Salary, d.name AS 'Department Name', s.Skill
FROM employee e, employee_skill s, department d
WHERE e.Employee_ID = s.Employee_ID
    AND e.Department_ID = d.Department_ID
ORDER BY e.Name;
-- 6
SELECT Name
FROM employee
WHERE job = (
    SELECT job
    FROM employee
    WHERE name = 'Yongyut'
)
    AND Name != 'Yongyut';
-- 7
SELECT a.Client_ID, a.Employee_ID, a.Work_Date, a.Hours, s.Employee_ID, s.Skill
FROM assignment a
RIGHT JOIN employee_skill s ON s.Employee_ID = a.Employee_ID;
-- 8
SELECT s.Employee_ID, s.Skill, a.Client_ID, a.Employee_ID, a.Work_Date, a.Hours
FROM employee_skill s
LEFT JOIN assignment a ON s.Employee_ID = a.Employee_ID;
-- 9
SELECT Name, Salary
FROM employee
WHERE Salary > (
    SELECT AVG(Salary)
    FROM employee
);
-- 10
SELECT Employee_ID, Name, Job, Salary, Department_ID
FROM employee
WHERE Employee_ID NOT IN (
    SELECT Employee_ID
    FROM assignment
)
    AND Job = 'System Administrator';