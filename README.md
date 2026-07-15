# HR Analytics Dashboard

## Project Overview

This project analyzes employee attrition data to identify workforce trends and factors associated with employee turnover. SQL was used to analyze the dataset and calculate key HR metrics, while Tableau was used to build an interactive dashboard that allows users to explore attrition patterns across departments, job roles, overtime status, marital status, tenure, and monthly income.

## Business Problem

Employee turnover can increase recruitment costs, disrupt operations, and lead to the loss of organizational knowledge. The goal of this project is to analyze employee attrition and identify workforce segments experiencing higher attrition rates.

The analysis focuses on the following questions:

- What is the overall employee attrition rate?
- Which departments have the highest attrition rates?
- Which job roles experience the highest attrition?
- How does overtime relate to employee attrition?
- How does attrition vary by employee tenure?
- How does monthly income relate to attrition?
- How does attrition vary by marital status?

## Tools Used

- **SQL (SQLite)** – Data querying and analysis
- **Tableau** – Interactive dashboard development and data visualization
- **Visual Studio Code** – SQL development and project organization
- **GitHub** – Version control and project documentation

## Key Metrics

- **Total Employees:** 1,470
- **Employees Who Left:** 237
- **Overall Attrition Rate:** 16.1%

## Key Findings

- Sales had the highest departmental attrition rate at **20.6%**.
- Sales Representatives had the highest job-role attrition rate at **39.8%**.
- Employees working overtime had a substantially higher attrition rate (**30.5%**) than employees who did not work overtime (**10.4%**).
- Single employees had the highest attrition rate by marital status at **25.5%**.
- Employees with **0–4 years of tenure** had an attrition rate of **24.3%**, indicating elevated turnover among newer employees.
- The lowest monthly income group ($1,000–$4,999) had an attrition rate of **21.8%**.

## Tableau Dashboard

The interactive Tableau dashboard provides a consolidated view of employee attrition and allows users to explore how attrition varies across key workforce characteristics.

![HR Analytics Dashboard](Images/HR_Analytics_Dashboard.png)

## Project Structure

HR-Analytics-Dashboard/
- Data/
  - Raw/
  - Cleaned/
- Documentation/
  - BusinessProblem.md
  - Findings.md
  - ProjectNotes.md
- Images/
  - HR_Analytics_Dashboard.png
- SQL/
  - hr_analytics.db
  - queries.sql
  - SQL_Results.md
- Tableau/
  - HR_Analytics_Dashboard.twbx
- README.md

## SQL Analysis

SQL queries were used to calculate and analyze employee attrition across multiple dimensions, including department, job role, overtime status, marital status, tenure, and monthly income.

The complete SQL analysis is available in `SQL/queries.sql`, with query results documented in `SQL/SQL_Results.md`.

## Dashboard Features

The Tableau dashboard includes:

- Total employee KPI
- Employees who left KPI
- Overall attrition rate KPI
- Attrition by department
- Attrition by job role
- Attrition by overtime status
- Attrition by marital status
- Attrition by tenure
- Attrition by monthly income
- Interactive chart filtering

## Conclusion

The analysis indicates that employee attrition is particularly concentrated among Sales Representatives, employees working overtime, newer employees, single employees, and employees in lower income groups. These findings suggest that organizations could focus retention efforts on workload management, early-career employee engagement, compensation, and high-turnover job roles.