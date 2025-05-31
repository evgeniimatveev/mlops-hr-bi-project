-- View 1: employee_full_info
CREATE OR REPLACE VIEW employee_full_info AS
SELECT 
    e.emp_id,
    e.emp_name,
    e.hire_date,
    e.salary,
    d.dept_name,
    p.position_name
FROM employees e
JOIN departments d ON e.dept_id = d.dept_id
JOIN positions p ON e.position_id = p.position_id;

-- View 2: employee_salary_history
CREATE OR REPLACE VIEW employee_salary_history AS
SELECT 
    e.emp_id,
    e.emp_name,
    l.salary,
    l.changed_at
FROM employees e
JOIN salaries_log l ON e.emp_id = l.emp_id;

-- View 3: avg_salary_by_department
CREATE OR REPLACE VIEW avg_salary_by_department AS
SELECT 
    d.dept_name,
    ROUND(AVG(e.salary), 2) AS avg_salary
FROM employees e
JOIN departments d ON e.dept_id = d.dept_id
GROUP BY d.dept_name;

-- View 4: count_by_position
CREATE OR REPLACE VIEW count_by_position AS
SELECT 
    p.position_name,
    COUNT(*) AS total_employees
FROM employees e
JOIN positions p ON e.position_id = p.position_id
GROUP BY p.position_name;

-- View 5: last_salary_change
CREATE OR REPLACE VIEW last_salary_change AS
SELECT 
    e.emp_id,
    e.emp_name,
    MAX(l.changed_at) AS last_changed_at
FROM employees e
JOIN salaries_log l ON e.emp_id = l.emp_id
GROUP BY e.emp_id, e.emp_name;

-- View 6: salary_trends
CREATE OR REPLACE VIEW salary_trends AS
SELECT 
    e.emp_id,
    EXTRACT(YEAR FROM l.changed_at)::INT AS year,
    ROUND(AVG(l.salary), 2) AS avg_salary
FROM employees e
JOIN salaries_log l ON e.emp_id = l.emp_id
GROUP BY e.emp_id, EXTRACT(YEAR FROM l.changed_at);