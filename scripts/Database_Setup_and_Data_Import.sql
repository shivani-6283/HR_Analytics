/*
==========================================================
DATABASE: HR_Analytics
PURPOSE: Database Creation, Table Setup & Data Import

NOTE:
This script drops and recreates the HR_Analytics database
if it already exists. All existing tables and data within
this database will be permanently deleted.

WARNING:
Execute this script only when setting up the database
or when you intend to reset the existing database.
==========================================================
*/

-- ==========================================
-- 1. Create HR Analytics Database
-- ==========================================

USE master;
GO

-- Drop database if it already exists

IF EXISTS (
    SELECT 1
    FROM sys.databases
    WHERE name = 'HR_Analytics'
)
BEGIN
    ALTER DATABASE HR_Analytics
    SET SINGLE_USER WITH ROLLBACK IMMEDIATE;

    DROP DATABASE HR_Analytics;
END;
GO

-- Create Database

CREATE DATABASE HR_Analytics;
GO

USE HR_Analytics;
GO


-- ==========================================
-- 2. Create HR Analytics Table
-- ==========================================

CREATE TABLE dbo.HR_data (
    [Employee Number] INT PRIMARY KEY,
    [Employee Count] INT,
    [Attrition] VARCHAR(5),
    [Business Travel] NVARCHAR(30),
    [Age Group] NVARCHAR(20),
    [Department] NVARCHAR(20),
    [Education Field] NVARCHAR(30),
    [Gender] NVARCHAR(10),
    [Job Role] NVARCHAR(40),
    [Marital Status] NVARCHAR(20),
    [Over Time] VARCHAR(5),
    [Age] INT,
    [Distance From Home] INT,
    [Education] NVARCHAR(30),
    [Environment Satisfaction] INT,
    [Job Satisfaction] INT,
    [Monthly Income] INT,
    [Total Working Years] INT,
    [Years At Company] INT,
    [Years In Current Role] INT,
    [Years Since Last Promotion] INT,
    [Years With Curr Manager] INT
);
GO


-- ==========================================
-- 3. Clear Existing Table Records
-- ==========================================

TRUNCATE TABLE dbo.HR_data;
GO


-- ==========================================
-- 4. Import HR Dataset from CSV
-- ==========================================

BULK INSERT dbo.HR_data
FROM 'C:\Users\sande\Music\HR DASHBOARD\Project\Company Data.csv'
WITH (
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    TABLOCK
);
GO
