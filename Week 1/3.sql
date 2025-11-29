CREATE TABLE `assignment` (
    `Client_ID` INT NOT NULL,
    `Employee_ID` INT NOT NULL,
    `Work_Date` DATE NOT NULL,
    `Hours` FLOAT DEFAULT NULL,
    PRIMARY KEY (`Client_ID`, `Employee_ID`, `Work_Date`)
);

CREATE TABLE `client` (
    `Client_ID` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `Name` VARCHAR(40) DEFAULT NULL,
    `Address` VARCHAR(100) DEFAULT NULL,
    `Contact_Person` VARCHAR(80) DEFAULT NULL,
    `Contact_Number` CHAR(12) DEFAULT NULL
);

CREATE TABLE `department` (
    `DepartmentID` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `Name` VARCHAR(30) DEFAULT NULL
);

CREATE TABLE `employee` (
    `Employee_ID` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `Name` VARCHAR(80) DEFAULT NULL,
    `Job` VARCHAR(30) DEFAULT NULL,
    `Salary` INT DEFAULT NULL,
    `Department_ID` INT NOT NULL
);

CREATE TABLE `employee_skill` (
    `Employee_ID` INT NOT NULL,
    `Skill` VARCHAR(15) NOT NULL,
    PRIMARY KEY (`Employee_ID`, `Skill`)
);
