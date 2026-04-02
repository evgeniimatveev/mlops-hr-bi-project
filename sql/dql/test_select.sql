-- ============================================
-- DATA VALIDATION / TEST QUERIES
-- Purpose: Ensure data quality and integrity
-- ============================================


-- 1. Check total row count
SELECT COUNT(*) AS total_rows
FROM employee_full_info;


-- 2. Check for NULL values
SELECT *
FROM employee_full_info
WHERE emp_id IS NULL
   OR emp_name IS NULL
   OR salary IS NULL
   OR hire_date IS NULL;


-- 3. Check duplicate employees
SELECT emp_id, COUNT(*) AS duplicate_count
FROM employee_full_info
GROUP BY emp_id
HAVING COUNT(*) > 1;


-- 4. Check negative or invalid salaries
SELECT *
FROM employee_full_info
WHERE salary <= 0;


-- 5. Check future hire dates (invalid)
SELECT *
FROM employee_full_info
WHERE hire_date > CURRENT_DATE;


-- 6. Check missing departments
SELECT *
FROM employee_full_info
WHERE dept_name IS NULL;


-- 7. Basic distribution sanity check
SELECT 
    dept_name,
    COUNT(*) AS employee_count
FROM employee_full_info
GROUP BY dept_name
ORDER BY employee_count DESC;
