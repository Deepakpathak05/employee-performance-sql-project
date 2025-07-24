CREATE DATABASE EMPLOYEE;
USE EMPLOYEE;
CREATE TABLE EMPLOYEE_RECORD_TABLE (
EMP_ID VARCHAR(20) PRIMARY KEY,
FIRST_NAME VARCHAR(20),
LAST_NAME VARCHAR(20),
GENDER CHAR(1),
ROLE VARCHAR(30),
DEPT VARCHAR(20),
EXP INT,
COUNTRY VARCHAR(20),
CONTINENT VARCHAR(20),
SALARY INT,
EMP_RATING INT,
MANAGER_ID VARCHAR(20),
PROJ_ID VARCHAR(20)
);


INSERT INTO EMPLOYEE_RECORD_TABLE (EMP_ID, FIRST_NAME, LAST_NAME, GENDER, ROLE, DEPT, EXP, COUNTRY, CONTINENT, SALARY, EMP_RATING, MANAGER_ID, PROJ_ID) VALUES
('E001', 'Arthur', 'Black', 'M',	'PRESIDENT', 'ALL', 20, 'USA',	'NORTH_AMERICA', 16500,	5, 'NULL',	'NULL'),
('E005', 'Eric', 'Hoffman',	'M', 'LEAD_DATA_SCIENTIST', 'FINANCE', 11,	'USA',	'NORTH_AMERICA', 8500, 3, 'E103', 'P105'),
('E010', 'William', 'Butler', 'M', 'LEAD_DATA_SCIENTIST', 'AUTOMOTIVE', 12, 'FRANCE', 'EUROPE', 9000, 2, 'E428', 'P204'),
('E052', 'Dianna', 'Wilson', 'F', 'SENIOR_DATA_SCIENTIST', 'HEALTHCARE', 6, 'CANADA', 'NORTH_AMERICA', 5500, 5, 'E083', 'P103'),
('E057', 'Dorothy', 'Wilson', 'F', 'SENIOR_DATA_SCIENTIST', 'HEALTHCARE', 9,	'USA',	'NORTH_AMERICA', 7700,	1, 'E083', 'P302'),
('E083', 'Patrick', 'Voltz', 'M', 'MANAGER', 'HEALTHCARE', 15, 'USA',  'NORTH_AMERICA',	9500,	5, 'E001', 'NULL'),
('E103', 'Emily', 'Grove', 'F',	'MANAGER', 'FINANCE', 14, 'CANADA', 'NORTH_AMERICA', 10500, 4,	'E001',	'NULL'),
('E204', 'Karene', 'Nowak', 'F',	'SENIOR_DATA_SCIENTIST', 'AUTOMOTIVE',	8, 'GERMANY', 'EUROPE',	7500,	5, 'E428', 'P204'),
('E245', 'Nian',	'Zhen',	'M',	'SENIOR_DATA_SCIENTIST', 'RETAIL',	6, 'CHINA', 'ASIA',	6500,	2, 'E583', 'P109'),
('E260', 'Roy', 'Collins', 'M',	'SENIOR_DATA_SCIENTIST', 'RETAIL',	7, 'INDIA', 'ASIA',	7000,	3, 'E583', 'NA'),
('E403', 'Steve', 'Hoffman', 'M', 'ASSOCIATE_DATA_SCIENTIST', 'FINANCE',  4,  'USA',  'NORTH_AMERICA',	5000,	3, 'E103', 'P105'),
('E428', 'Pete',	'Allen', 'M',	'MANAGER', 'AUTOMOTIVE', 14, 'GERMANY',	'EUROPE',	11000,	4, 'E001', 'NULL'),
('E478', 'David', 'Smith', 'M',	'ASSOCIATE_DATA_SCIENTIST', 'RETAIL',	3, 'COLOMBIA',	'SOUTH_AMERICA', 4000, 4, 'E583', 'P109'),
('E505', 'Chad',	'Wilson', 'M', 'ASSOCIATE_DATA_SCIENTIST', 'HEALTHCARE', 5, 'CANADA',	'NORTH_AMERICA', 5000, 2, 'E083', 'P103'),
('E532', 'Claire', 'Brennan', 'F', 'ASSOCIATE_DATA_SCIENTIST', 'AUTOMOTIVE', 3,	'GERMANY',  'EUROPE',	4300,	1, 'E428', 'P204'),
('E583', 'Janet', 'Hale', 'F', 'MANAGER', 'RETAIL',  14,	'COLOMBIA', 'SOUTH_AMERICA',	10000,	2, 'E001', 'NULL'),
('E612', 'Tracy', 'Norris', 'F', 'MANAGER', 'RETAIL',  13, 'INDIA', 'ASIA', 	8500,	4, 'E001', 'NULL'),
('E620', 'Katrina', 'Allen', 'F', 'JUNIOR_DATA_SCIENTIST', 'RETAIL', 2,	'INDIA', 'ASIA', 3000 ,1, 'E612', 'P406'),
('E640', 'Jenifer', 'Jhones', 'F', 'JUNIOR_DATA_SCIENTIST', 'RETAIL', 1,  'COLOMBIA','SOUTH_AMERICA', 2800, 4, 'E612', 'P406');



CREATE TABLE PROJ_TABLE (
PROJECT_ID VARCHAR(20) PRIMARY KEY,
PROJ_NAME  VARCHAR(50),
DOMAIN VARCHAR(50),
START_DATE DATE,
CLOSURE_DATE DATE,
DEV_QTR VARCHAR(10),
STATUS VARCHAR(20)
);

INSERT INTO PROJ_TABLE (PROJECT_ID, PROJ_NAME, DOMAIN, START_DATE, CLOSURE_DATE, DEV_QTR, STATUS) VALUES
('P103', 'DRUG_DISCOVERY', 'HEALTHCARE', '2021-04-06', '2021-06-20', 'Q1', 'DONE'),
('P105', 'FRAUD_DETECTION', 'FINANCE', '2021-04-11', '2021-06-25', 'Q1', 'DONE'),
('P109', 'MARKET_BASKET_ANALYSIS', 'RETAIL', '2021-04-12', '2021-06-30', 'Q1', 'DELAYED'),
('P204', 'SUPPLY_CHAIN_MANAGEMENT', 'AUTOMOTIVE', '2021-07-15', '2021-09-28', 'Q2', 'WIP'),
('P302', 'EARLY_DETECION_OF_LUNG_CANCER', 'HEALTHCARE', '2021-08-12', '2021-12-18', 'Q3', 'YTS'),
('P406', 'CUSTOMER_SENTIMENT_ANALYSIS', 'RETAIL', '2021-07-09', '2021-09-24', 'Q2', 'WIP');


CREATE TABLE DATA_SCIENCE_TEAM (
EMP_ID VARCHAR(20),
FIRST_NAME VARCHAR(20),
LAST_NAME VARCHAR(20),
GENDER CHAR(1),
ROLE VARCHAR(30),
DEPT VARCHAR(20),
EXP INT,
COUNTRY VARCHAR(20),
CONTINENT VARCHAR(20)
);

INSERT INTO DATA_SCIENCE_TEAM (EMP_ID, FIRST_NAME, LAST_NAME, GENDER, ROLE, DEPT, EXP, COUNTRY, CONTINENT) VALUES
('E005', 'Eric', 'Hoffman', 'M', 'LEAD_DATA_SCIENTIST', 'FINANCE', 11,	'USA',	'NORTH_AMERICA'),
('E010', 'William', 'Butler', 'M', 'LEAD_DATA_SCIENTIST', 'AUTOMOTIVE', 12, 'FRANCE', 'EUROPE'), 
('E052', 'Dianna', 'Wilson', 'F', 'SENIOR_DATA_SCIENTIST', 'HEALTHCARE', 6, 'CANADA', 'NORTH_AMERICA'), 
('E057', 'Dorothy', 'Wilson', 'F', 'SENIOR_DATA_SCIENTIST', 'HEALTHCARE', 9,	'USA',	'NORTH_AMERICA'), 
('E204', 'Karene', 'Nowak', 'F', 'SENIOR_DATA_SCIENTIST', 'AUTOMOTIVE',	8, 'GERMANY', 'EUROPE'),	
('E245', 'Nian', 'Zhen', 'M', 'SENIOR_DATA_SCIENTIST', 'RETAIL', 6, 'CHINA', 'ASIA'),	
('E260', 'Roy', 'Collins', 'M',	'SENIOR_DATA_SCIENTIST', 'RETAIL', 7, 'INDIA', 'ASIA'),	
('E403', 'Steve', 'Hoffman', 'M', 'ASSOCIATE_DATA_SCIENTIST', 'FINANCE',  4,  'USA',  'NORTH_AMERICA'),	
('E478', 'David', 'Smith', 'M',	'ASSOCIATE_DATA_SCIENTIST', 'RETAIL',	3, 'COLOMBIA',	'SOUTH_AMERICA'), 
('E505', 'Chad', 'Wilson', 'M', 'ASSOCIATE_DATA_SCIENTIST', 'HEALTHCARE', 5, 'CANADA',	'NORTH_AMERICA'), 
('E532', 'Claire', 'Brennan', 'F', 'ASSOCIATE_DATA_SCIENTIST', 'AUTOMOTIVE', 3,	'GERMANY',  'EUROPE'),
('E620', 'Katrina', 'Allen', 'F', 'JUNIOR_DATA_SCIENTIST', 'RETAIL', 2,	'INDIA', 'ASIA'),
('E640', 'Jenifer', 'Jhones', 'F', 'JUNIOR_DATA_SCIENTIST', 'RETAIL', 1, 'COLOMBIA','SOUTH_AMERICA');


-- 3. Write a query to fetch EMP_ID, FIRST_NAME, LAST_NAME, GENDER, and DEPARTMENT from the employee record table, and make a list of employees and details of their department.
   select EMP_ID, FIRST_NAME, LAST_NAME, GENDER, DEPT FROM EMPLOYEE_RECORD_TABLE;
   
-- 4. 	Write a query to fetch EMP_ID, FIRST_NAME, LAST_NAME, GENDER, DEPARTMENT, and EMP_RATING if the EMP_RATING is: 
-- ●	less than two
-- ●	greater than four 
-- ●	between two and four
SELECT EMP_ID, FIRST_NAME, LAST_NAME, GENDER, DEPT, EMP_RATING FROM EMPLOYEE_RECORD_TABLE
WHERE EMP_RATING < 2 
     OR EMP_RATING > 4 
     OR (EMP_RATING BETWEEN 2 AND 4); 
     
-- 5. Write a query to concatenate the FIRST_NAME and the LAST_NAME of employees in the Finance department from the employee table and then give the resultant column alias as NAME.   
SELECT FIRST_NAME, LAST_NAME, CONCAT(FIRST_NAME, LAST_NAME) AS NAME FROM EMPLOYEE_RECORD_TABLE WHERE DEPT = 'FINANCE' ;


-- 6.	Write a query to list only those employees who have someone reporting to them. Also, show the number of reporters (including the President).
SELECT E.EMP_ID, E.FIRST_NAME, E.LAST_NAME, COUNT(M.EMP_ID) AS NO_OF_REPORTERS FROM EMPLOYEE_RECORD_TABLE AS E
JOIN EMPLOYEE_RECORD_TABLE AS M ON E.EMP_ID = M.MANAGER_ID
GROUP BY e.EMP_ID, e.FIRST_NAME, e.LAST_NAME
Order by NO_OF_REPORTERS DESC;


-- 7.	Write a query to list down all the employees from the healthcare and finance departments using union. Take data from the employee record table.
SELECT EMP_ID, FIRST_NAME, LAST_NAME, GENDER, ROLE, DEPT, COUNTRY FROM  employee_record_table WHERE DEPT = 'HEALTHCARE'
UNION
SELECT EMP_ID, FIRST_NAME, LAST_NAME, GENDER, ROLE, DEPT, COUNTRY FROM  employee_record_table WHERE DEPT = 'FINANCE';


-- 8.	Write a query to list down employee details such as EMP_ID, FIRST_NAME, LAST_NAME, ROLE, DEPARTMENT, and EMP_RATING grouped by dept.  Also include the respective employee rating along with the max emp rating for the department.
 SELECT e.EMP_ID, e.FIRST_NAME, e.LAST_NAME, e.ROLE, e.DEPT AS DEPARTMENT, e.EMP_RATING, d.MAX_DEPT_RATING FROM EMPLOYEE_RECORD_TABLE as e
JOIN (SELECT DEPT, MAX(EMP_RATING) AS MAX_DEPT_RATING FROM EMPLOYEE_RECORD_TABLE
GROUP BY DEPT) d ON e.DEPT = d.DEPT
ORDER BY 
e.DEPT,
e.EMP_ID;

-- 9.	Write a query to calculate the minimum and the maximum salary of the employees in each role. Take data from the employee record table.
SELECT ROLE, MAX(SALARY) AS MAX_SALARY, MIN(SALARY) AS MIN_SALARY FROM EMPLOYEE_RECORD_TABLE GROUP BY ROLE;


-- 10.	Write a query to assign ranks to each employee based on their experience. Take data from the employee record table.
SELECT EMP_ID, FIRST_NAME,  LAST_NAME, ROLE, DEPT, EXP,
RANK() OVER (ORDER BY EXP DESC) AS EXPERIENCE_RANK FROM EMPLOYEE_RECORD_TABLE
ORDER BY EXPERIENCE_RANK;


--  11.	Write a query to create a view that displays employees in various countries whose salary is more than six thousand.Take data from the employee record table.
CREATE VIEW EMP_SAL AS
SELECT EMP_ID, FIRST_NAME, LAST_NAME, ROLE, COUNTRY, SALARY  FROM EMPLOYEE_RECORD_TABLE WHERE SALARY > 6000;
    
SELECT * FROM EMP_SAL;


-- 12.	Write a nested query to find employees with experience of more than ten years. Take data from the employee record table.
SELECT * FROM EMPLOYEE_RECORD_TABLE WHERE EMP_ID IN ( SELECT EMP_ID FROM EMPLOYEE_RECORD_TABLE WHERE EXP > 10);


-- 13.	Write a query to create a stored procedure to retrieve the details of the employees whose experience is more than three years.Take data from the employee record table.
    delimiter //
    create procedure employees_exp()
    begin
    select emp_id, first_name, last_name, role, dept, salary, exp from employee_record_table where exp >3;
    end //
    delimiter ;
    
    CALL EMPLOYEES_EXP();
 -- 14.	Write a query using stored functions in the project table to check whether the job profile assigned to each employee in the data science team matches the organization’s set standard.
-- The standard being:
-- For an employee with the experience of 2 to 5 years assign 'ASSOCIATE DATA SCIENTIST',
-- For an employee with the experience of 5 to 10 years assign 'SENIOR DATA SCIENTIST',
-- For an employee with the experience of 10 to 12 years assign 'LEAD DATA SCIENTIST',
-- For an employee with the experience of 12 to 16 years assign 'MANAGER'.
   
SELECT EMP_ID, FIRST_NAME, LAST_NAME, EXP, ROLE AS ASSIGNED_ROLE,
CASE 
        WHEN EXP <= 2 THEN 'JUNIOR DATA SCIENTIST'
        WHEN EXP <= 5 THEN 'ASSOCIATE DATA SCIENTIST'
        WHEN EXP <= 10 THEN 'SENIOR DATA SCIENTIST'
        WHEN EXP <= 12 THEN 'LEAD DATA SCIENTIST'
        WHEN EXP <= 16 THEN 'MANAGER'
        ELSE 'UNKNOWN'
       END AS EXPECTED_ROLE
FROM DATA_SCIENCE_TEAM
WHERE 
    ROLE <> CASE 
        WHEN EXP <= 2 THEN 'JUNIOR DATA SCIENTIST'
        WHEN EXP <= 5 THEN 'ASSOCIATE DATA SCIENTIST'
        WHEN EXP <= 10 THEN 'SENIOR DATA SCIENTIST'
        WHEN EXP <= 12 THEN 'LEAD DATA SCIENTIST'
        WHEN EXP <= 16 THEN 'MANAGER'
        ELSE 'UNKNOWN'
    END;
    
-- 15.	Create an index to improve the cost and performance of the query to find the employee whose FIRST_NAME is ‘Eric’ in the employee table after checking the execution plan.
CREATE INDEX idx_emp_first_name ON EMPLOYEE_RECORD_TABLE(FIRST_NAME);
SELECT * FROM EMPLOYEE_RECORD_TABLE WHERE FIRST_NAME = 'Eric';


-- 16.	Write a query to calculate the bonus for all the employees, based on their ratings and salaries (Use the formula: 5% of salary * employee rating).
SELECT EMP_ID, FIRST_NAME, LAST_NAME, ROLE, DEPT, SALARY, EMP_RATING, SALARY*0.05*EMP_RATING AS BONUS FROM EMPLOYEE_RECORD_TABLE;
    
-- 17.	Write a query to calculate the average salary distribution based on the continent and country. Take data from the employee record table.
WITH AVERAGE_SALARY_DIST AS (
SELECT COUNTRY, CONTINENT, AVG(SALARY) AS AVG_SALARY FROM EMPLOYEE_RECORD_TABLE GROUP BY COUNTRY, CONTINENT)
SELECT * FROM AVERAGE_SALARY_DIST;







