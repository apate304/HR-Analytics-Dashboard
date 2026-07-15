-- ============================================
-- HR Analytics Dashboard
-- SQL Analysis
-- ============================================

-- 1. Total Number of Employees
SELECT COUNT(*) AS TotalEmployees
FROM employees;
-- 2. Overall Attrition Analysis
SELECT 
    Attrition,
    COUNT(*) AS EmployeeCount
FROM employees
GROUP BY Attrition;
-- 3. Overall Attrition Rate
SELECT
    ROUND(
        100.0 * SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) / COUNT(*),
        1
    ) AS AttritionRate
FROM employees;
-- 4. Attrition Rate by Department
SELECT
    Department,
    COUNT(*) AS TotalEmployees,
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS EmployeesLeft,
    ROUND(
        100.0 * SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) / COUNT(*),
        1
    ) AS AttritionRate
FROM employees
GROUP BY Department
ORDER BY AttritionRate DESC;
-- 5. Attrition Rate by Overtime
SELECT
    OverTime,
    COUNT(*) AS TotalEmployees,
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS EmployeesLeft,
    ROUND(
        100.0 * SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) / COUNT(*),
        1
    ) AS AttritionRate
FROM employees
GROUP BY OverTime
ORDER BY AttritionRate DESC;
-- 6. Attrition Rate by Job Role
SELECT
    JobRole,
    COUNT(*) AS TotalEmployees,
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS EmployeesLeft,
    ROUND(
        100.0 * SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) / COUNT(*),
        1
    ) AS AttritionRate
FROM employees
GROUP BY JobRole
ORDER BY AttritionRate DESC;
-- 7. Attrition Rate by Marital Status
SELECT
    MaritalStatus,
    COUNT(*) AS TotalEmployees,
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS EmployeesLeft,
    ROUND(
        100.0 * SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) / COUNT(*),
        1
    ) AS AttritionRate
FROM employees
GROUP BY MaritalStatus
ORDER BY AttritionRate DESC;
-- 8. Attrition Rate by Monthly Income Range
SELECT
    CASE
        WHEN CAST(MonthlyIncome AS INTEGER) BETWEEN 1000 AND 4999 THEN '1000-4999'
        WHEN CAST(MonthlyIncome AS INTEGER) BETWEEN 5000 AND 8999 THEN '5000-8999'
        WHEN CAST(MonthlyIncome AS INTEGER) BETWEEN 9000 AND 12999 THEN '9000-12999'
        WHEN CAST(MonthlyIncome AS INTEGER) BETWEEN 13000 AND 16999 THEN '13000-16999'
        WHEN CAST(MonthlyIncome AS INTEGER) BETWEEN 17000 AND 20999 THEN '17000-20999'
    END AS IncomeRange,
    COUNT(*) AS TotalEmployees,
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS EmployeesLeft,
    ROUND(
        100.0 * SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) / COUNT(*),
        1
    ) AS AttritionRate
FROM employees
GROUP BY IncomeRange
ORDER BY CAST(MIN(MonthlyIncome) AS INTEGER);
-- 9. Attrition Rate by Years at Company
SELECT
    CASE
        WHEN CAST(YearsAtCompany AS INTEGER) BETWEEN 0 AND 4 THEN '0-4'
        WHEN CAST(YearsAtCompany AS INTEGER) BETWEEN 5 AND 9 THEN '5-9'
        WHEN CAST(YearsAtCompany AS INTEGER) BETWEEN 10 AND 14 THEN '10-14'
        WHEN CAST(YearsAtCompany AS INTEGER) BETWEEN 15 AND 19 THEN '15-19'
        WHEN CAST(YearsAtCompany AS INTEGER) BETWEEN 20 AND 24 THEN '20-24'
        WHEN CAST(YearsAtCompany AS INTEGER) BETWEEN 25 AND 29 THEN '25-29'
        WHEN CAST(YearsAtCompany AS INTEGER) BETWEEN 30 AND 34 THEN '30-34'
        WHEN CAST(YearsAtCompany AS INTEGER) BETWEEN 35 AND 40 THEN '35-40'
    END AS YearsAtCompanyRange,
    COUNT(*) AS TotalEmployees,
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS EmployeesLeft,
    ROUND(
        100.0 * SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) / COUNT(*),
        1
    ) AS AttritionRate
FROM employees
GROUP BY YearsAtCompanyRange
ORDER BY CAST(MIN(YearsAtCompany) AS INTEGER);
-- 10. Attrition Among Employees Working Overtime
--     and in Their First 0-4 Years at the Company
SELECT
    COUNT(*) AS TotalEmployees,
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS EmployeesLeft,
    ROUND(
        100.0 * SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) / COUNT(*),
        1
    ) AS AttritionRate
FROM employees
WHERE OverTime = 'Yes'
  AND CAST(YearsAtCompany AS INTEGER) BETWEEN 0 AND 4;