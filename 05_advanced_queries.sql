
-- =============================================
-- EMPLOYEE MANAGEMENT SYSTEM
-- File: 05_advanced_queries.sql
-- Description: Advanced SQL queries
-- =============================================

USE employee_management;


-- =============================================
-- 1. EMPLOYEE DETAILS WITH DEPARTMENT NAME
-- =============================================

SELECT
    e.employee_id,
    e.first_name,
    e.last_name,
    e.job_title,
    d.department_name
FROM employees e
INNER JOIN departments d
    ON e.department_id = d.department_id;


-- =============================================
-- 2. EMPLOYEES WITH THEIR SALARIES
-- =============================================

SELECT
    e.employee_id,
    e.first_name,
    e.last_name,
    s.salary
FROM employees e
INNER JOIN salaries s
    ON e.employee_id = s.employee_id;


-- =============================================
-- 3. AVERAGE SALARY
-- =============================================

SELECT
    AVG(salary) AS average_salary
FROM salaries;


-- =============================================
-- 4. HIGHEST SALARY
-- =============================================

SELECT
    MAX(salary) AS highest_salary
FROM salaries;


-- =============================================
-- 5. LOWEST SALARY
-- =============================================

SELECT
    MIN(salary) AS lowest_salary
FROM salaries;


-- =============================================
-- 6. TOTAL SALARY BY DEPARTMENT
-- =============================================

SELECT
    d.department_name,
    SUM(s.salary) AS total_salary
FROM departments d
INNER JOIN employees e
    ON d.department_id = e.department_id
INNER JOIN salaries s
    ON e.employee_id = s.employee_id
GROUP BY d.department_name;


-- =============================================
-- 7. EMPLOYEE COUNT BY DEPARTMENT
-- =============================================

SELECT
    d.department_name,
    COUNT(e.employee_id) AS employee_count
FROM departments d
LEFT JOIN employees e
    ON d.department_id = e.department_id
GROUP BY d.department_name;


-- =============================================
-- 8. EMPLOYEES WITH SALARY GREATER THAN 800000
-- =============================================

SELECT
    e.first_name,
    e.last_name,
    s.salary
FROM employees e
INNER JOIN salaries s
    ON e.employee_id = s.employee_id
WHERE s.salary > 800000;


-- =============================================
-- 9. EMPLOYEE PERFORMANCE DETAILS
-- =============================================

SELECT
    e.first_name,
    e.last_name,
    p.performance_score,
    p.performance_rating
FROM employees e
INNER JOIN performance p
    ON e.employee_id = p.employee_id;


-- =============================================
-- 10. EMPLOYEES WITH EXCELLENT PERFORMANCE
-- =============================================

SELECT
    e.first_name,
    e.last_name,
    p.performance_score,
    p.performance_rating
FROM employees e
INNER JOIN performance p
    ON e.employee_id = p.employee_id
WHERE p.performance_rating = 'Excellent';


-- =============================================
-- 11. EMPLOYEE ATTENDANCE DETAILS
-- =============================================

SELECT
    e.first_name,
    e.last_name,
    a.working_days,
    a.days_present,
    a.days_absent
FROM employees e
INNER JOIN attendance a
    ON e.employee_id = a.employee_id;


-- =============================================
-- 12. EMPLOYEES WITH MORE THAN 3 ABSENT DAYS
-- =============================================

SELECT
    e.first_name,
    e.last_name,
    a.days_absent
FROM employees e
INNER JOIN attendance a
    ON e.employee_id = a.employee_id
WHERE a.days_absent > 3;


-- =============================================
-- END OF ADVANCED QUERIES
-- =============================================