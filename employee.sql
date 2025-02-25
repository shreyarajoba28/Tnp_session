create table Employees (
EmployeeID INT primary key,
FirstName VARCHAR (50),
LastName VARCHAR (50),
BirthDate DATE,
Salary DECIMAL (10,2)
);
INSERT INTO Employees (EmployeeID, FirstName, LastName, BirthDate, Salary)
VALUES
    (1, 'John', 'Doe', '1990-05-15', 75000.00),
    (2, 'Jane', 'Smith', '1985-08-22', 85000.00),
    (3, 'Alice', 'Johnson', '1992-03-10', 90000.00),
    (4, 'Bob', 'Brown', '1988-11-05', 80000.00);
    
SELECT * FROM Employees;
-- adding column
ALTER TABLE Employees
ADD COLUMN Email VARCHAR (100);

SELECT * FROM Employees;
-- modifying the table
ALTER TABLE Employees
MODIFY COLUMN Salary DECIMAL (12,2);
-- rename the column name
ALTER TABLE Employees
RENAME COLUMN BirthDate to DateofBirth;
-- drop the column
ALTER TABLE Employees
DROP COLUMN Email;
-- rename the table name
RENAME TABLE Employees TO Staff;
SELECT * FROM Staff;
-- update table
UPDATE Staff 
SET Salary = 85000.00
WHERE EmployeeID = 1;
SELECT * FROM Staff;
-- ADDING NEW COLUMN
ALTER TABLE Staff
ADD COLUMN Employeedept VARCHAR(50);
-- INSERT 
UPDATE Staff
SET Employeedept = 'Software Engineer'
WHERE EmployeeID = 1;

UPDATE Staff
SET Employeedept = 'IT'
WHERE EmployeeID = 2;

UPDATE Staff
SET Employeedept = 'ENTC'
WHERE EmployeeID = 3;

UPDATE Staff
SET Employeedept = 'Mech'
WHERE EmployeeID = 4;

SELECT * FROM Staff;

ALTER TABLE
Staff
MODIFY COLUMN LastName VARCHAR (255) not null;
SHOW COLUMNS FROM Staff;
UPDATE Staff 
SET Salary = 75000.00
WHERE EmployeeID = 1;
ALTER TABLE Staff 
ADD CONSTRAINT UQ_Salary UNIQUE (Salary);
SELECT * FROM Staff;
ALTER TABLE Staff 
MODIFY COLUMN SALARY  DECIMAL;
SHOW COLUMNS FROM Staff;
SELECT * FROM Staff;
