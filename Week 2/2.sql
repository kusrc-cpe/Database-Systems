UPDATE Employee SET Department_ID = 128 WHERE Employee_ID = 3333;
DELETE FROM Employee WHERE Employee_ID = 4442;
UPDATE Employee SET Salary = 20000 WHERE Employee_ID = 4445;

UPDATE Department SET Name = 'Research and Development' WHERE Department_ID = 128;
DELETE FROM Department WHERE Department_ID = 200;

DELETE FROM Employee_Skill WHERE Employee_ID = 2222 AND Skill = 'MySQL';
DELETE FROM Employee_Skill WHERE Employee_ID = 2222 AND Skill = 'Oracle';
UPDATE Employee_Skill SET Skill = 'NT' WHERE Employee_ID = 4444 AND Skill = 'Win NT';

UPDATE Client SET Contact_Person = 'Vera', Contact_Number = '02-95555123' WHERE Client_ID = 1;
UPDATE Client SET Contact_Person = 'Mongkol', Contact_Number = '02-9555985' WHERE Client_ID = 2;
DELETE FROM Client WHERE Client_ID = 3;

UPDATE Assignment SET Hours = 8.5 WHERE Client_ID = 1;
DELETE FROM Assignment WHERE Client_ID = 3;
