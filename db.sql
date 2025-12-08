CREATE DATABASE `Employee`;

use `Employee`;

CREATE TABLE `Assignment` (
    `Client_ID` INT NOT NULL,
    `Employee_ID` INT NOT NULL,
    `Work_Date` DATE NOT NULL,
    `Hours` FLOAT DEFAULT NULL,
    PRIMARY KEY (`Client_ID`, `Employee_ID`, `Work_Date`)
);

CREATE TABLE `Client` (
    `Client_ID` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `Name` VARCHAR(40) DEFAULT NULL,
    `Address` VARCHAR(100) DEFAULT NULL,
    `Contact_Person` VARCHAR(80) DEFAULT NULL,
    `Contact_Number` CHAR(12) DEFAULT NULL
);

CREATE TABLE `Department` (
    `Department_ID` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `Name` VARCHAR(30) DEFAULT NULL
);

CREATE TABLE `Employee` (
    `Employee_ID` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `Name` VARCHAR(80) DEFAULT NULL,
    `Job` VARCHAR(30) DEFAULT NULL,
    `Salary` INT DEFAULT NULL,
    `Department_ID` INT NOT NULL
);

CREATE TABLE `Employee_Skill` (
    `Employee_ID` INT NOT NULL,
    `Skill` VARCHAR(15) NOT NULL,
    PRIMARY KEY (`Employee_ID`, `Skill`)
);

INSERT INTO `Assignment` (`Client_ID`, `Employee_ID`, `Work_Date`, `Hours`) VALUES
    (1, 1111, '2009-04-27', 8.5),
    (2, 2222, '2009-05-26', 7);

INSERT INTO `Client` (`Client_ID`, `Name`, `Address`, `Contact_Person`, `Contact_Number`) VALUES
    (1, 'ABC Company Limited', '1 Silom Rd.', 'Vera', '02-95555123'),
    (2, 'Imperial Industry', '100 Samutprakran', 'Mongkol', '02-9555985');

INSERT INTO `Department` (`Department_ID`, `Name`) VALUES
    (42, 'Finance'),
    (128, 'Research and Development'),
    (130, 'Marketing');

INSERT INTO `Employee` (`Employee_ID`, `Name`, `Job`, `Salary`, `Department_ID`) VALUES
    (1111, 'Somchai', 'Programmer', 15000, 128),
    (2222, 'Wichit', 'DBA', 13500, 42),
    (3333, 'Somjai', 'Programmer', 16500, 128),
    (4444, 'Aphitsit', 'System Administrator', 12000, 130),
    (4445, 'Yongyut', 'Programmer', 20000, 128),
    (4446, 'Somjit', 'Programmer', 16500, 128);

INSERT INTO `Employee_Skill` (`Employee_ID`, `Skill`) VALUES
    (1111, 'C'),
    (1111, 'Java'),
    (1111, 'Perl'),
    (2222, 'DB2'),
    (3333, 'Java'),
    (3333, 'VB'),
    (4444, 'Linux'),
    (4444, 'NT'),
    (4445, 'PHP'),
    (4446, 'JSP');