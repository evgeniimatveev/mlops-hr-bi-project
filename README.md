# HR BI Analytics — PostgreSQL · SQL · Python · Tableau
 
![PostgreSQL](https://img.shields.io/badge/PostgreSQL-Database-blue?logo=postgresql&logoColor=white)
![Python](https://img.shields.io/badge/Python-Automation-yellow?logo=python&logoColor=black)
![Tableau](https://img.shields.io/badge/Tableau-Visualization-orange?logo=tableau&logoColor=white)
![SQL](https://img.shields.io/badge/SQL-Analytics-lightgrey?logo=postgresql)
![License](https://img.shields.io/badge/License-MIT-green.svg)
![Status](https://img.shields.io/badge/Status-Active-brightgreen)

---

## What This Project Does

Analyzed HR data for **30 employees across 5 departments** (Engineering, Sales, Finance, Marketing, HR) to surface compensation inequities and hiring trends for strategic workforce decisions.

**Key finding:** Sales department leads in average salary ($102K) — 17% above the company average of $87K — while Marketing carries the largest headcount (23% of workforce).

**Pipeline:** `PostgreSQL → SQL Views → Python Export → Tableau Dashboard`

---

## Dashboard Preview

<p align="center">
  <img src="https://github.com/evgeniimatveev/hr-bi-analytics-project/blob/main/tableau/screenshots/Dashboard.png?raw=true" width="900"/>
</p>

---

## Business Questions & Findings

| Question | Finding |
|----------|---------|
| Which department has the largest workforce? | Marketing — 7 employees (23% of headcount) |
| Which department leads in average salary? | Sales — $102,400 avg |
| What is the salary spread? | $58K (min) → $135K (max), range = $77K |
| When did hiring peak? | 2019–2020 — highest intake years |
| Which roles dominate salary budget? | DevOps Engineers + Sales Reps = largest salary investment |

---

## SQL — Advanced Patterns

### Window Function: Salary Rank Within Department

```sql
SELECT
    emp_name,
    dept_name,
    salary,
    RANK() OVER (PARTITION BY dept_name ORDER BY salary DESC) AS salary_rank,
    ROUND(salary - AVG(salary) OVER (PARTITION BY dept_name), 0) AS vs_dept_avg
FROM employee_full_info
ORDER BY dept_name, salary_rank;
```

### CTE: Salary Deviation by Employee

```sql
WITH dept_stats AS (
    SELECT
        dept_name,
        ROUND(AVG(salary), 0) AS dept_avg
    FROM employee_full_info
    GROUP BY dept_name
)
SELECT
    e.emp_name,
    e.dept_name,
    e.salary,
    d.dept_avg,
    ROUND((e.salary - d.dept_avg) / d.dept_avg * 100, 1) AS pct_vs_dept_avg
FROM employee_full_info e
JOIN dept_stats d USING (dept_name)
ORDER BY pct_vs_dept_avg DESC;
```

### Aggregate: Department Summary

```sql
SELECT
    dept_name,
    COUNT(*)                   AS headcount,
    ROUND(AVG(salary), 0)     AS avg_salary,
    MIN(salary)               AS min_salary,
    MAX(salary)               AS max_salary
FROM employee_full_info
GROUP BY dept_name
ORDER BY avg_salary DESC;
```

---

## Architecture

```
PostgreSQL (source)
    └── SQL Views (analytical layer)
            └── Python export_views.py (automation)
                    └── CSV files (data/*)
                            └── Tableau Dashboard (storytelling)
```

---

## Project Structure

```
mlops_hr_bi_project/
├── README.md
├── .env.example
├── requirements.txt
├── data/                    # exported CSV views
│   ├── employee_full_info_*.csv
│   ├── avg_salary_by_department_*.csv
│   ├── count_by_position_*.csv
│   └── salary_trends_*.csv
├── sql/
│   ├── ddl/                 # schema & views
│   ├── dml/                 # data inserts
│   └── dql/                 # analysis queries
├── scripts/
│   └── export_views.py
└── tableau/
    ├── dashboard.twbx
    └── screenshots/
```

---

## Tableau Assets

| Story | Link |
|-------|------|
| Workforce Distribution | [View PDF](https://github.com/evgeniimatveev/hr-bi-analytics-project/blob/main/tableau/screenshots/Workforce_Distribution_by_Department.pdf) |
| Salary by Role | [View PDF](https://github.com/evgeniimatveev/hr-bi-analytics-project/blob/main/tableau/screenshots/Salary_Distribution_by_Role.pdf) |
| Avg Salary by Dept | [View PDF](https://github.com/evgeniimatveev/hr-bi-analytics-project/blob/main/tableau/screenshots/Average_Salary_by_Department.pdf) |
| Salary Comparison | [View PDF](https://github.com/evgeniimatveev/hr-bi-analytics-project/blob/main/tableau/screenshots/Salary_Comparison_Across_Roles.pdf) |
| Hiring Trend | [View PDF](https://github.com/evgeniimatveev/hr-bi-analytics-project/blob/main/tableau/screenshots/Hiring_Trend_Over_Time.pdf) |

---

## How to Run

```bash
# 1. Configure environment
cp .env.example .env
# Edit .env with your PostgreSQL credentials

# 2. Activate environment and export views
conda activate mlops_hr_bi_env
python scripts/export_views.py

# 3. Open Tableau workbook
# tableau/dashboard.twbx
```

**.env example:**
```
DB_NAME=hr_bi
DB_USER=postgres
DB_PASSWORD=your_password
DB_HOST=localhost
DB_PORT=5432
```

---

## Stack

| Layer | Technology |
|-------|-----------|
| Database | PostgreSQL |
| Analytics | SQL (Views, CTEs, Window Functions) |
| Automation | Python (psycopg2, pandas) |
| Visualization | Tableau |
| Version Control | Git / GitHub |

---

## Connect

- GitHub: [evgeniimatveev](https://github.com/evgeniimatveev)
- Portfolio: [datascienceportfol.io/evgeniimatveevusa](https://www.datascienceportfol.io/evgeniimatveevusa)
- LinkedIn: [Evgenii Matveev](https://www.linkedin.com/in/evgenii-matveev-510926276/)
