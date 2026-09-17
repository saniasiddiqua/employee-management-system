
-- =============================================
-- EMPLOYEE MANAGEMENT SYSTEM
-- File: 04_basic_queries.sql
-- Description: Basic SQL queries
-- =============================================

USE employee_management;


-- =============================================
-- 1. DISPLAY ALL DEPARTMENTS
-- =============================================

SELECT * 
FROM departments;


-- =============================================
-- 2. DISPLAY ALL EMPLOYEES
-- =============================================

SELECT * 
FROM employees;


-- =============================================
-- 3. DISPLAY EMPLOYEE NAMES AND JOB TITLES
-- =============================================

SELECT 
    first_name,
    last_name,
    job_title
FROM employees;


-- =============================================
-- 4. FIND ACTIVE EMPLOYEES
-- =============================================

SELECT *
FROM employees
WHERE employee_status = 'Active';


-- =============================================
-- 5. SORT EMPLOYEES BY HIRE DATE
-- =============================================

SELECT *
FROM employees
ORDER BY hire_date ASC;


-- =============================================
-- 6. DISPLAY EMPLOYEES FROM IT DEPARTMENT
-- =============================================

SELECT *
FROM employees
WHERE department_id = 1;


-- =============================================
-- 7. COUNT TOTAL EMPLOYEES
-- =============================================

SELECT COUNT(*) AS total_employees
FROM employees;


-- =============================================
-- 8. DISPLAY EMPLOYEES HIRED AFTER 2022
-- =============================================

SELECT *
FROM employees
WHERE hire_date > '2022-01-01';


-- =============================================
-- 9. DISPLAY FEMALE EMPLOYEES
-- =============================================

SELECT *
FROM employees
WHERE gender = 'Female';


-- =============================================
-- 10. SORT EMPLOYEES BY FIRST NAME
-- =============================================

SELECT *
FROM employees
ORDER BY first_name ASC;


-- =============================================
-- END OF BASIC QUERIES
-- =============================================
