-- =============================================
-- EMPLOYEE MANAGEMENT SYSTEM
-- File: 03_insert_data.sql
-- Description: Insert sample data
-- =============================================

USE employee_management;




-- =============================================
-- 1. INSERT DEPARTMENTS
-- =============================================


insert into departments (department_id, department_name, location)
values
(1, 'It', 'Hyderabad'),
(2, 'Hr', 'bangalore'),
(3, 'Finance', 'mumbai'),
(4, 'Marketing', 'delhi'),
(5, 'Operations', 'pune');
     
-- =============================================
-- 2. INSERT EMPLOYEES
-- =============================================


INSERT INTO employees  (employee_id, first_name, last_name, gender, email, phone, hire_date, job_title, department_id, manager_id, employee_status)
VALUES
(101, 'Aisha', 'Khan', 'Female', 'aisha.khan@company.com',
 '9000000001', '2019-06-15', 'IT Manager', 1, NULL, 'Active'),

(102, 'Rahul', 'Sharma', 'Male', 'rahul.sharma@company.com',
 '9000000002', '2021-03-10', 'Software Developer', 1, 101, 'Active'),

(103, 'Sana', 'Begum', 'Female', 'sana.begum@company.com',
 '9000000003', '2022-07-20', 'Data Analyst', 1, 101, 'Active'),

(104, 'Arjun', 'Reddy', 'Male', 'arjun.reddy@company.com',
 '9000000004', '2020-01-25', 'HR Manager', 2, NULL, 'Active'),

(105, 'Priya', 'Patel', 'Female', 'priya.patel@company.com',
 '9000000005', '2023-02-18', 'HR Executive', 2, 104, 'Active'),

(106, 'Vikram', 'Singh', 'Male', 'vikram.singh@company.com',
 '9000000006', '2018-11-05', 'Finance Manager', 3, NULL, 'Active'),

(107, 'Neha', 'Gupta', 'Female', 'neha.gupta@company.com',
 '9000000007', '2022-09-12', 'Accountant', 3, 106, 'Active'),

(108, 'Imran', 'Ali', 'Male', 'imran.ali@company.com',
 '9000000008', '2021-05-30', 'Marketing Manager', 4, NULL, 'Active'),

(109, 'Kavya', 'Rao', 'Female', 'kavya.rao@company.com',
 '9000000009', '2024-01-15', 'Marketing Executive', 4, 108, 'Active'),

(110, 'Rohan', 'Das', 'Male', 'rohan.das@company.com',
 '9000000010', '2020-08-22', 'Operations Manager', 5, NULL, 'Active'),

(111, 'Fatima', 'Shaikh', 'Female', 'fatima.shaikh@company.com',
 '9000000011', '2023-06-10', 'Operations Executive', 5, 110, 'Active'),

(112, 'Aman', 'Verma', 'Male', 'aman.verma@company.com',
 '9000000012', '2024-04-05', 'Junior Developer', 1, 101, 'Active');

    

-- =============================================
-- 3. INSERT SALARIES
-- =============================================

INSERT INTO salaries
(salary_id, employee_id, salary, salary_date)
VALUES
(1, 101, 1200000.00, '2025-01-01'),
(2, 102, 650000.00, '2025-01-01'),
(3, 103, 550000.00, '2025-01-01'),
(4, 104, 950000.00, '2025-01-01'),
(5, 105, 450000.00, '2025-01-01'),
(6, 106, 1100000.00, '2025-01-01'),
(7, 107, 500000.00, '2025-01-01'),
(8, 108, 900000.00, '2025-01-01'),
(9, 109, 400000.00, '2025-01-01'),
(10, 110, 850000.00, '2025-01-01'),
(11, 111, 420000.00, '2025-01-01'),
(12, 112, 480000.00, '2025-01-01');

    
-- =============================================
-- 4. INSERT ATTENDANCE
-- =============================================

INSERT INTO attendance
(attendance_id, employee_id, attendance_month,
 working_days, days_present, days_absent)
VALUES
(1, 101, '2025-09-01', 22, 21, 1),
(2, 102, '2025-09-01', 22, 20, 2),
(3, 103, '2025-09-01', 22, 18, 4),
(4, 104, '2025-09-01', 22, 22, 0),
(5, 105, '2025-09-01', 22, 19, 3),
(6, 106, '2025-09-01', 22, 20, 2),
(7, 107, '2025-09-01', 22, 17, 5),
(8, 108, '2025-09-01', 22, 21, 1),
(9, 109, '2025-09-01', 22, 18, 4),
(10, 110, '2025-09-01', 22, 19, 3),
(11, 111, '2025-09-01', 22, 16, 6),
(12, 112, '2025-09-01', 22, 20, 2);

      
      -- =============================================
-- 5. INSERT PERFORMANCE
-- =============================================

INSERT INTO performance
(performance_id, employee_id, review_year,
 performance_score, performance_rating, comments)
VALUES
(1, 101, 2025, 4.8, 'Excellent', 'Strong leadership'),
(2, 102, 2025, 4.2, 'Very Good', 'Good technical skills'),
(3, 103, 2025, 4.5, 'Excellent', 'Strong analytical skills'),
(4, 104, 2025, 4.0, 'Very Good', 'Good team management'),
(5, 105, 2025, 3.8, 'Good', 'Consistent performance'),
(6, 106, 2025, 4.7, 'Excellent', 'Strong financial management'),
(7, 107, 2025, 3.5, 'Good', 'Needs improvement'),
(8, 108, 2025, 4.4, 'Excellent', 'Good marketing strategy'),
(9, 109, 2025, 3.9, 'Good', 'Creative contributions'),
(10, 110, 2025, 4.1, 'Very Good', 'Good operational control'),
(11, 111, 2025, 3.2, 'Needs Improvement', 'Attendance improvement needed'),
(12, 112, 2025, 4.0, 'Very Good', 'Good development progress');


-- =============================================
-- END OF INSERT DATA
-- =============================================