-- ============================================
-- HR BI ANALYSIS QUERIES
-- Purpose: Business insights for HR analytics
-- ============================================


-- 1. Workforce distribution by department
SELECT 
    dept_name,
    COUNT(*) AS employee_count
FROM employee_full_info
GROUP BY dept_name
ORDER BY employee_count DESC;


-- 2. Average salary by department
SELECT 
    dept_name,
    ROUND(AVG(salary), 2) AS avg_salary
FROM employee_full_info
GROUP BY dept_name
ORDER BY avg_salary DESC;


-- 3. Salary distribution by role
SELECT 
    position_name,
    COUNT(*) AS total_employees,
    SUM(salary) AS total_salary
FROM employee_full_info
GROUP BY position_name
ORDER BY total_salary DESC;


-- 4. Top 5 highest paid employees
SELECT 
    emp_id,
    emp_name,
    position_name,
    salary
FROM employee_full_info
ORDER BY salary DESC
LIMIT 5;


-- 5. Hiring trend over time (yearly)
SELECT 
    EXTRACT(YEAR FROM hire_date) AS hire_year,
    COUNT(*) AS hires
FROM employee_full_info
GROUP BY hire_year
ORDER BY hire_year;


-- 6. Salary range analysis
SELECT 
    MIN(salary) AS min_salary,
    MAX(salary) AS max_salary,
    ROUND(AVG(salary), 2) AS avg_salary
FROM employee_full_info;
