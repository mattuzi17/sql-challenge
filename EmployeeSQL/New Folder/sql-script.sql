CREATE TABLE Employees (
    Employee_Number int UNIQUE PRIMARY KEY,
    Title_ID VARCHAR(30)   NOT NULL,
    Birth_Date date   NOT NULL,
    First_Name VARCHAR(30)   NOT NULL,
    Last_Name VARCHAR(30)   NOT NULL,
    Sex VARCHAR(30)   NOT NULL,
    Hire_Date date   NOT NULL
    
     
);

CREATE TABLE Salaries (
    Employee_Number int UNIQUE  NOT NULL,
    Salary int   NOT NULL,
    CONSTRAINT pk_Salaries PRIMARY KEY (
        Employee_Number
     )
);

CREATE TABLE Titles (
    Title_ID VARCHAR() UNIQUE  NOT NULL,
    Title_Name VARCHAR(30)   NOT NULL,
    CONSTRAINT pk_Titles PRIMARY KEY (
        Title_ID
     )
);

CREATE TABLE Departments (
    Department_Number VARCHAR(30) UNIQUE  NOT NULL,
    Department_Name VARCHAR(30)   NOT NULL,
    CONSTRAINT pk_Departments PRIMARY KEY (
        Department_Number
     )
);

CREATE TABLE Department_Managers (
    Department_Number VARCHAR(30)  NOT NULL,
    Employee_Number int   NOT NULL,
    CONSTRAINT pk_Department_Managers PRIMARY KEY (
        Department_Number,Employee_Number)
     )
);

CREATE TABLE Department_Employees (
    Employee_Number int  NOT NULL,
    Department_Number VARCHAR(30)   NOT NULL,
    CONSTRAINT pk_Department_Employees PRIMARY KEY (
        Employee_Number, Department_Number)
);

 ALTER TABLE Salaries ADD CONSTRAINT fk_Salaries_Employee_Number FOREIGN KEY(Employee_Number)
 REFERENCES Employees (Employee_Number);

ALTER TABLE Employees ADD CONSTRAINT fk_Employees_Title_ID FOREIGN KEY(Title_ID)
REFERENCES Titles (Title_ID);

 ALTER TABLE Department_Managers ADD CONSTRAINT fk_Department_Managers_Department_Number FOREIGN KEY(Department_Number)
 REFERENCES Departments (Department_Number);

ALTER TABLE Department_Managers ADD CONSTRAINT fk_Department_Managers_Employee_Number FOREIGN KEY(Employee_Number)
REFERENCES Employees (Employee_Number);

 ALTER TABLE Department_Employees ADD CONSTRAINT fk_Department_Employees_Employee_Number FOREIGN KEY(Employee_Number)
 REFERENCES Employees (Employee_Number);

 ALTER TABLE Department_Employees ADD CONSTRAINT fk_Department_Employees_Department_Number FOREIGN KEY(Department_Number)
 REFERENCES Departments (Department_Number);

