CREATE DATABASE SoftUni

USE SoftUni

CREATE TABLE Towns(
Id INT PRIMARY KEY IDENTITY NOT NULL,
[Name] NVARCHAR(20) NOT NULL,
)

CREATE TABLE Addresses(
Id INT PRIMARY KEY IDENTITY NOT NULL,
AddressText NVARCHAR(MAX),
TownId INT FOREIGN KEY REFERENCES Towns(Id) NOT NULL
)

CREATE TABLE Departments(
Id INT PRIMARY KEY IDENTITY NOT NULL,
[Name] NVARCHAR(30)NOT NULL
)

CREATE TABLE Employees(
Id INT PRIMARY KEY IDENTITY NOT NULL,
FirstName NVARCHAR(20) NOT NULL,
MiddleName NVARCHAR(20) NOT NULL,
LastName NVARCHAR(20) NOT NULL,
JobTitle NVARCHAR (15) NOT NULL,
DepartmentId INT FOREIGN KEY REFERENCES Departments(Id) NOT NULL,
HireDate DATETIME2 NOT NULL,
Salary DECIMAL (6,2) NOT NULL,
AddressId INT FOREIGN KEY REFERENCES Addresses(Id)
)