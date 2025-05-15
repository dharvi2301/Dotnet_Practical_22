USE Practical_22;

CREATE TABLE Employee (
    EmployeeId INT PRIMARY KEY IDENTITY(1,1),
    EmployeeName NVARCHAR(100) NOT NULL,
    EmployeeSalary DECIMAL(18, 2) NOT NULL,
    DepartmentId INT NOT NULL,
    EmployeeEmail NVARCHAR(100),
    EmployeeJoiningDate DATETIME NOT NULL,
    EmployeeStatus NVARCHAR(20) NOT NULL,
    FOREIGN KEY (DepartmentId) REFERENCES Department(DepartmentId)
);


CREATE TABLE Department (
    DepartmentId INT PRIMARY KEY IDENTITY(1,1),
    DepartmentName NVARCHAR(100) NOT NULL
);

INSERT INTO Department (DepartmentName)
VALUES 
('Human Resources'),
('Finance'),
('IT'),
('Marketing'),
('Operations');


INSERT INTO Employee (
    EmployeeName,
    EmployeeSalary,
    DepartmentId,
    EmployeeEmail,
    EmployeeJoiningDate,
    EmployeeStatus
)
VALUES
('Alice Johnson', 60000.00, 1, 'alice.johnson@example.com', '2021-04-15', 'Active'),
('Bob Smith', 55000.00, 2, 'bob.smith@example.com', '2022-01-10', 'Active'),
('Charlie Brown', 75000.00, 3, 'charlie.brown@example.com', '2020-07-01', 'Inactive'),
('Diana Prince', 67000.00, 4, 'diana.prince@example.com', '2023-03-20', 'Active'),
('Ethan Hunt', 58000.00, 5, 'ethan.hunt@example.com', '2022-11-05', 'Active');

