
-- =============================================
-- EMPLOYEE MANAGEMENT SYSTEM
-- File: 02_create_tables.sql
-- Description: Create all project tables
-- =============================================

USE employee_management;


-- 1. DEPARTMENTS TABLE

CREATE TABLE departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(100) NOT NULL,
    location VARCHAR(100)
);


-- 2. EMPLOYEES TABLE

CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    gender VARCHAR(10),
    email VARCHAR(100) UNIQUE,
    phone VARCHAR(15),
    hire_date DATE NOT NULL,
    job_title VARCHAR(100),
    department_id INT,
    manager_id INT,
    employee_status VARCHAR(20) DEFAULT 'Active',

    FOREIGN KEY (department_id)
        REFERENCES departments(department_id),

    FOREIGN KEY (manager_id)
        REFERENCES employees(employee_id)
);


-- 3. SALARIES TABLE

CREATE TABLE salaries (
    salary_id INT PRIMARY KEY,
    employee_id INT NOT NULL,
    salary DECIMAL(10,2) NOT NULL,
    salary_date DATE NOT NULL,

    FOREIGN KEY (employee_id)
        REFERENCES employees(employee_id)
);


-- 4. ATTENDANCE TABLE

CREATE TABLE attendance (
    attendance_id INT PRIMARY KEY,
    employee_id INT NOT NULL,
    attendance_month DATE NOT NULL,
    working_days INT NOT NULL,
    days_present INT NOT NULL,
    days_absent INT NOT NULL,

    FOREIGN KEY (employee_id)
        REFERENCES employees(employee_id)
);


-- 5. PERFORMANCE TABLE

CREATE TABLE performance (
    performance_id INT PRIMARY KEY,
    employee_id INT NOT NULL,
    review_year YEAR NOT NULL,
    performance_score DECIMAL(4,2),
    performance_rating VARCHAR(20),
    comments VARCHAR(255),

    FOREIGN KEY (employee_id)
        REFERENCES employees(employee_id)
);

