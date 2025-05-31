CREATE TABLE departments (
    dept_id SERIAL PRIMARY KEY,
    dept_name TEXT,
    manager_id INT
);

CREATE TABLE positions (
    position_id SERIAL PRIMARY KEY,
    position_name TEXT
);

CREATE TABLE employees (
    emp_id SERIAL PRIMARY KEY,
    emp_name TEXT,
    hire_date DATE,
    salary INT,
    dept_id INT REFERENCES departments(dept_id),
    position_id INT REFERENCES positions(position_id)
);

CREATE TABLE salaries_log (
    log_id SERIAL PRIMARY KEY,
    emp_id INT REFERENCES employees(emp_id),
    salary INT,
    changed_at TIMESTAMP
);