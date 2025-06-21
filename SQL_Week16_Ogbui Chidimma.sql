--WITH CTE_Employee as
--(SELECT FirstName,LastName,Gender,Salary
--,COUNT(gender)OVER(PARTITION by Gender)as TotalGender
--,AVG(Salary)OVER(PARTITION BY Gender)as AvgSalary
--FROM EmployeeDemographics
--JOIN EmployeeSalary sal
--    ON EmployeeDemographics.EmployeeID=sal.EmployeeID
--WHERE Salary>'45000'
--)
--SELECT *
--FROM CTE_Employee

--SELECT FirstName,AvgSalary
--FROM CTE_Employee


--DROP TABLE IF EXISTS #temp_Employee2
--CREATE TABLE #temp_Employee (
--EmployeeID int,
--JobTitle varchar(100),
--Salary int
--)

--SELECT*
--FROM #temp_Employee

--INSERT INTO #temp_Employee VALUES (
--'1001','HR','45000'
--)

--INSERT INTO #temp_Employee
--SELECT *
--FROM EmployeeSalary

--CREATE TABLE #temp_Employee2 (
--JobTitle varchar(50),
--EmployeeperJob int,
--AvgAge int,
--AvgSalary int)

--INSERT INTO #temp_Employee2
--SELECT JobTitle, COUNT(JobTitle), Avg(Age),Avg(salary)
--FROM EmployeeDemographics
--JOIN EmployeeSalary
--    ON EmployeeDemographics.EmployeeID=EmployeeSalary.EmployeeID
--GROUP BY JobTitle

--SELECT *
--FROM #temp_Employee2

--SELECT *
--FROM EmployeeSalary

----Subquery in select
--SELECT EmployeeID,Salary,(SELECT AVG(Salary)FROM EmployeeSalary)as AllAvgSalary
--FROM EmployeeSalary

----Partition by

--SELECT EmployeeID,Salary, AVG(Salary)OVER ()as AllAvgSalary
--FROM EmployeeSalary

----Why Group by doesn't work

--SELECT EmployeeID,Salary, AVG(Salary)as AllAvgSalary
--FROM EmployeeSalary
--GROUP BY EmployeeID,Salary
--ORDER BY 1,2

----Subquery in from

--SELECT a.EmployeeID,AllAvgSalary
--FROM (SELECT EmployeeID,Salary, AVG(Salary)OVER ()as AllAvgSalary
--     FROM EmployeeSalary) a

----Subquery in where

-- SELECT EmployeeID,JobTitle,Salary
-- FROM EmployeeSalary
-- WHERE EmployeeID in (
--         SELECT EmployeeID
--         FROM EmployeeDemographics
--         WHERE Age>30)


--SELECT EmployeeID,JobTitle,Salary,
--ROW_NUMBER()OVER(PARTITION BY JobTitle ORDER BY Salary DESC)AS ROW_NUMBER
--FROM EmployeeSalary

--CREATE INDEX idx_Employee_Name ON EmployeeDemographics(LastName,FirstName)

--CREATE INDEX idx_Salary_EmployeeID ON EmployeeSalary(EmployeeID)
--CREATE INDEX Idx_Salary_Amount ON EmployeeSalary(Salary)
