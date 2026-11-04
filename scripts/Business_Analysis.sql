/*
===============================================================================
HR ANALYTICS | SQL QUERIES
===============================================================================
Calculate key workforce KPIs and analyse employee attrition across departments,
age groups, gender, job roles, job satisfaction, and overtime to support
interactive HR dashboard reporting.
===============================================================================
*/


/*
===============================================================================
01 - KPI CALCULATIONS

Calculate overall workforce metrics, including total employees, active
employees, average salary, average age, and attrition employee metrics.
===============================================================================
*/

--a.) Overall Employees
SELECT
    COUNT([Employee Number]) AS Employee_Count,
    SUM(CASE WHEN Attrition = 'No' THEN 1 ELSE 0 END) AS Active_Employee,
    FORMAT(AVG([Monthly Income])/1000, '$0.0K') AS Average_Salary,
    CAST(AVG(Age) AS DECIMAL(10,0)) AS Average_Age
FROM HR_data;

--b.) Attrition Employees
SELECT
    COUNT(Attrition) AS Employee_Count,
    FORMAT(AVG([Monthly Income])/1000, '$0.0K') AS Average_Salary,
    CAST(AVG(Age) AS DECIMAL(10,0)) AS Average_Age
FROM HR_data
WHERE Attrition = 'Yes';

/*
===============================================================================
02 - CHART CALCULATIONS

Generate aggregated employee attrition metrics for dashboard visualizations,
including department, age group, gender, job role, job satisfaction,
and overtime analysis.
===============================================================================
*/ 

-- ==========================================
-- a.) Donut Chart: Attrition by Department
-- ==========================================

SELECT
    Department,
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS Attrition_Count,
    CAST(
        100.0 * SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END)
        / COUNT([Employee Number])
        AS DECIMAL(10, 1)
    ) AS Attrition_Rate
FROM HR_data
GROUP BY Department;


-- ==========================================
-- b). Stacked Column Chart: Attrition by Age Group and Gender
-- ==========================================

SELECT
    [Age Group],
    Gender,
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS Attrition_Count,
    CAST(
        100.0 * SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END)
        / COUNT([Employee Number])
        AS DECIMAL(10, 1)
    ) AS Attrition_Rate
FROM HR_data
GROUP BY
    [Age Group],
    Gender
ORDER BY 1,2;


-- ==========================================
-- c). Matrix Chart: Attrition by Job Role and Job Satisfaction
-- ==========================================

SELECT
    [Job Role],
    [Job Satisfaction],
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS Attrition_Count,
    CAST(
        100.0 * SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END)
        / COUNT([Employee Number])
        AS DECIMAL(10, 1)
    ) AS Attrition_Rate
FROM HR_data
GROUP BY
    [Job Role],
    [Job Satisfaction]
ORDER BY 1,2;


-- ==========================================
-- d). Bar Chart: Attrition by Job Role
-- ==========================================

SELECT
    [Job Role],
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS Attrition_Count,
    CAST(
        100.0 * SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END)
        / COUNT([Employee Number])
        AS DECIMAL(10, 1)
    ) AS Attrition_Rate
FROM HR_data
GROUP BY [Job Role];


-- ==========================================
-- e). Treemap Chart: Attrition by Overtime
-- ==========================================

SELECT
    [Over Time],
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS Attrition_Count,
    CAST(
        100.0 * SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END)
        / COUNT([Employee Number])
        AS DECIMAL(10, 1)
    ) AS Attrition_Rate
FROM HR_data
GROUP BY [Over Time]

-- ==========================================
-- f). Clustered Column Chart: Job Role Attrition by Overtime
-- ==========================================

SELECT
    [Job Role],
    [Over Time],
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS Attrition_Count,
    CAST(
        100.0 * SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END)
        / COUNT([Employee Number])
        AS DECIMAL(10, 1)
    ) AS Attrition_Rate
FROM HR_data
GROUP BY
    [Job Role],
    [Over Time]
ORDER BY 1,2;


