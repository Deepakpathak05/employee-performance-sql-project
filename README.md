# employee-performance-sql-project
Real-world SQL project analyzing employee performance based on a startup case study using MySQL.

# 🚀 Employee Performance Mapping using SQL

This project is based on a real-world business case from **ScienceQtech**, a startup in the Data Science field. The goal is to simulate HR analytics using SQL to assist in employee performance appraisal, salary analysis, and project mapping.

---

## 🧩 Project Overview

As the Junior Database Administrator, I designed and executed advanced SQL queries to extract actionable insights from employee, project, and team datasets. This involved applying filtering, joins, views, functions, procedures, indexing, and performance tuning techniques.

---

## 🛠️ Technologies Used
- SQL (MySQL Workbench)
- Relational Database Design
- ER Diagram Design
- Stored Procedures & Functions
- Indexing & Performance Optimization

---

## 📁 Datasets Used

1. **emp_record_table** – Main employee database  
2. **proj_table** – Project data  
3. **data_science_team** – Filtered team-level information

---

## 📊 Key Features & SQL Tasks

✅ Fetch employee details by department and rating  
✅ Calculate min/max salaries per role  
✅ Filter based on experience, role, or rating  
✅ Create views and apply stored procedures  
✅ Generate rankings using window functions  
✅ Design ER diagrams for database relationships  
✅ Validate role mapping using stored functions  
✅ Optimize queries using indexing  
✅ Bonus calculation based on rating and salary  
✅ Analyze average salary distribution by country and continent

---

## 🔍 Example Queries (from `employee_queries.sql`)

```sql
-- Fetch employees with rating > 4
SELECT * FROM emp_record_table WHERE EMP_RATING > 4;

-- Bonus calculation
SELECT EMP_ID, SALARY, EMP_RATING, (0.05 * SALARY * EMP_RATING) AS BONUS
FROM emp_record_table;

-- Role validation stored function
DELIMITER //
CREATE FUNCTION CheckRole(exp DECIMAL(4,1)) RETURNS VARCHAR(30)
...
