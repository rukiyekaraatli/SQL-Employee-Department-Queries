CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(50) NOT NULL
);

INSERT INTO Departments (DepartmentID, DepartmentName) VALUES
(1, 'IT'),
(2, 'HR'),
(3, 'Finance');

CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Age INT,
    DepartmentID INT,
    Salary DECIMAL(10,2),
    JoinDate DATE,
    FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID)
);

INSERT INTO Employees (EmployeeID, FirstName, LastName, Age, DepartmentID, Salary, JoinDate) VALUES
(1, 'John', 'Doe', 30, 1, 55000, '2020-01-15'),
(2, 'Jane', 'Smith', 45, 2, 65000, '2018-07-20'),
(3, 'Sam', 'Brown', 28, 1, 52000, '2021-04-25'),
(4, 'Lisa', 'White', 35, 3, 70000, '2019-03-18'),
(5, 'Mark', 'Black', 50, 1, 75000, '2015-11-05'),
(6, 'Lucy', 'Green', 40, 2, 60000, '2017-10-10');


---Çalışanların sadece FirstName, LastName ve Salary bilgilerini getiren bir SQL sorgusu ---

SELECT  FirstName, LastName ,Salary
FROM Employees;

---Çalışanların çalıştıkları departmanları benzersiz olarak listeleyen bir SQL sorgusu

SELECT DISTINCT DepartmentID 
FROM Employees;

---Sadece IT departmanında çalışanların bilgilerini getiren bir SQL sorgusu yazınız.

SELECT EmployeeID, FirstName || ' ' || LastName AS FullName, Age, Salary, JoinDate
FROM Employees
WHERE DepartmentID = 1;

---Çalışanları maaşlarına göre büyükten küçüğe sıralayan bir SQL sorgusu

SELECT * 
FROM Employees
ORDER BY 6 DESC

---Çalışanların FirstName ve LastName alanlarını birleştirerek, tam adlarını içeren yeni bir kolon 
--oluşturan bir SQL sorgusu

SELECT FirstName || ' ' || LastName as Fullname
FROM Employees;