

# 🧠 HR BI Project — PostgreSQL + SQL + Tableau + Python Automation

![PostgreSQL](https://img.shields.io/badge/PostgreSQL-Database-blue?logo=postgresql&logoColor=white)
![Python](https://img.shields.io/badge/Python-Automation-yellow?logo=python&logoColor=black)
![Tableau](https://img.shields.io/badge/Tableau-Visualization-orange?logo=tableau&logoColor=white)
![SQL](https://img.shields.io/badge/SQL-Analytics-lightgrey?logo=postgresql)
![Data Pipeline](https://img.shields.io/badge/Data%20Pipeline-ETL-blueviolet)
![Status](https://img.shields.io/badge/Status-Active-brightgreen)

---

## 📊 Project Overview

This project is a **Business Intelligence (BI) showcase** built on HR data.

It demonstrates an end-to-end analytics workflow:

**PostgreSQL → SQL Views → Python Export → Tableau Dashboard → Storytelling**

Designed for:
- portfolio projects
- technical interviews
- demonstrating real-world BI & analytics workflows

---

## 🚀 TL;DR

> 💡 Built as a real-world BI pipeline to demonstrate SQL + automation + dashboard storytelling in a production-style structure.

---

## 🧩 Business Questions Answered

- Which department has the largest workforce?
- Which roles receive the highest salary investment?
- Which department leads in average compensation?
- How is salary distributed across roles?
- How has hiring activity changed over time?

---

## 📸 Dashboard Preview

<p align="center">
  <img src="https://github.com/evgeniimatveev/mlops-hr-bi-project/blob/main/tableau/screenshots/Dashboard.png?raw=true" width="900"/>
</p>

---

## 📘 Tableau Assets

### 🔗 Workbook
- 📂 [Download Tableau Workbook (.twbx)](https://github.com/evgeniimatveev/mlops-hr-bi-project/blob/main/tableau/hr_workforce_analysis.twbx)

### 📄 Story Exports
- 📊 [Workforce Distribution](https://github.com/evgeniimatveev/mlops-hr-bi-project/blob/main/tableau/screenshots/Workforce_Distribution_by_Department.pdf)
- 💼 [Salary Distribution](https://github.com/evgeniimatveev/mlops-hr-bi-project/blob/main/tableau/screenshots/Salary_Distribution_by_Role.pdf)
- 💰 [Avg Salary](https://github.com/evgeniimatveev/mlops-hr-bi-project/blob/main/tableau/screenshots/Average_Salary_by_Department.pdf)
- 🧠 [Salary Comparison](https://github.com/evgeniimatveev/mlops-hr-bi-project/blob/main/tableau/screenshots/Salary_Comparison_Across_Roles.pdf)
- 📈 [Hiring Trend](https://github.com/evgeniimatveev/mlops-hr-bi-project/blob/main/tableau/screenshots/Hiring_Trend_Over_Time.pdf)

---

## 🔍 Key Insights

- 📊 Marketing has the largest workforce → growth-focused strategy  
- 💰 Engineering leads in average salary → high technical demand  
- 🧠 Salary distribution is not uniform → high-impact roles dominate  
- ⚙️ Investment concentrated in **DevOps + Marketing roles**  
- 📈 Hiring peaked in 2020–2021 → shift from scaling to stabilization  

---

## ⚙️ How It Works

- 🛢️ SQL → builds analytical views  
- 🐍 Python → exports views into `.csv`  
- 📊 Tableau → creates dashboards & story  
- 🌐 GitHub → hosts full BI pipeline  

---

## 🏗️ Architecture

PostgreSQL → SQL Views → Python Export → CSV → Tableau → Story Dashboard

---

## 📌 Example SQL

```sql
-- Average salary by department
SELECT 
    dept_name,
    ROUND(AVG(salary), 2) AS avg_salary
FROM employee_full_info
GROUP BY dept_name
ORDER BY avg_salary DESC;
```
---

```sql
-- Top 5 highest paid employees
SELECT 
    emp_id,
    emp_name,
    position_name,
    salary
FROM employee_full_info
ORDER BY salary DESC
LIMIT 5;
```
---

```sql
-- Hiring trend over time (yearly)
SELECT 
    EXTRACT(YEAR FROM hire_date) AS hire_year,
    COUNT(*) AS hires
FROM employee_full_info
GROUP BY hire_year
ORDER BY hire_year;
```
---

## 💾 Environment Setup

```bash
DB_NAME=hr_bi
DB_USER=postgres
DB_PASSWORD=your_password
DB_HOST=localhost
DB_PORT=5432

```
---

## 🚀 How to Run

```bash
conda activate mlops_hr_bi_env
python scripts/export_views.py
```

---

## 🎯 Why This Project Matters

This project demonstrates a **complete BI workflow**:

- 🏗️ Database design (PostgreSQL)  
- 🧠 SQL analytics  
- 🐍 Python automation  
- 📊 Tableau visualization  
- 🌐 Portfolio-ready presentation  

### 💼 Target Roles

- Data Analyst  
- BI Analyst  
- Analytics Engineer  
- Junior Data Engineer  
- Entry-Level MLOps / Automation  

---

## 🪄 Future Improvements

- 📊 Add HR KPIs (attrition, tenure)  
- 🔌 Connect Tableau to live database  
- ⏱️ Automate scheduled exports  
- 🎛️ Improve dashboard interactivity  

---

## ⭐ Repository Value

This repository can be used as a **template for**:

- SQL + BI projects  
- Tableau portfolio  
- Data storytelling  
- End-to-end analytics pipelines  

---

## 📢 Connect

- 💻 GitHub: [evgeniimatveev](https://github.com/evgeniimatveev)
- 🌐 Portfolio: [Data Science Portfolio](https://www.datascienceportfol.io/evgeniimatveevusa)
- 📌 LinkedIn: [Evgenii Matveev](https://www.linkedin.com/in/evgenii-matveev-510926276/)

---


 # HR BI Analytics — PostgreSQL · SQL · Python · Tableau

  ![PostgreSQL](https://img.shields.io/badge/PostgreSQL-Database-blue?logo=postgresql&logoColor=white)
  ![Python](https://img.shields.io/badge/Python-Automation-yellow?logo=python&logoColor=black)
  ![Tableau](https://img.shields.io/badge/Tableau-Visualization-orange?logo=tableau&logoColor=white)
  ![SQL](https://img.shields.io/badge/SQL-Analytics-lightgrey?logo=postgresql)
  ![Status](https://img.shields.io/badge/Status-Active-brightgreen)

  ---

  ## What This Project Does

  Analyzed HR data for **30 employees across 5 departments** (Engineering, Sales, Finance, Marketing, HR) to surface
  compensation inequities and hiring trends for strategic workforce decisions.

  **Key finding:** Sales department leads in average salary ($102K) — 17% above the company average of $87K — while
  Marketing carries the largest headcount.

  **Pipeline:** `PostgreSQL → SQL Views → Python Export → Tableau Dashboard`

  ---

  ## Dashboard Preview

  <p align="center">
    <img
  src="https://github.com/evgeniimatveev/mlops-hr-bi-project/blob/main/tableau/screenshots/Dashboard.png?raw=true"
  width="900"/>
  </p>

  ---

  ## Business Questions & Findings

  | Question | Finding |
  |----------|---------|
  | Which department has the largest workforce? | Marketing (7 employees, 23% of headcount) |
  | Which department leads in average salary? | Sales — $102,400 avg |
  | What is the salary spread? | $58K (min) → $135K (max), range = $77K |
  | When did hiring peak? | 2019–2020 — highest intake years |
  | Which roles dominate salary budget? | DevOps + Sales Reps = largest salary investment |

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
  CTE: Salary Deviation by Employee
 ```
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
  Aggregate: Department Summary
  ```
  SELECT
      dept_name,
      COUNT(*)                    AS headcount,
      ROUND(AVG(salary), 0)      AS avg_salary,
      MIN(salary)                AS min_salary,
      MAX(salary)                AS max_salary
  FROM employee_full_info
  GROUP BY dept_name
  ORDER BY avg_salary DESC;
  ```
  ---
  Architecture

  PostgreSQL (source)
      └── SQL Views (analytical layer)
              └── Python export_views.py (automation)
                      └── CSV files (data/*)
                              └── Tableau Dashboard (storytelling)

  ---
  Tableau Assets

  - Download Workbook (.twbx)
  (https://github.com/evgeniimatveev/mlops-hr-bi-project/blob/main/tableau/hr_workforce_analysis.twbx)
  - Workforce Distribution (https://github.com/evgeniimatveev/mlops-hr-bi-project/blob/main/tableau/screenshots/Workforc
  e_Distribution_by_Department.pdf)
  - Salary Distribution
  (https://github.com/evgeniimatveev/mlops-hr-bi-project/blob/main/tableau/screenshots/Salary_Distribution_by_Role.pdf)
  - Avg Salary by Dept
  (https://github.com/evgeniimatveev/mlops-hr-bi-project/blob/main/tableau/screenshots/Average_Salary_by_Department.pdf)
  - Hiring Trend
  (https://github.com/evgeniimatveev/mlops-hr-bi-project/blob/main/tableau/screenshots/Hiring_Trend_Over_Time.pdf)

  ---
  How to Run

  # 1. Set up environment variables
  cp .env.example .env   # fill in your DB credentials

  # 2. Activate environment and run export
  conda activate mlops_hr_bi_env
  python scripts/export_views.py

  # 3. Open Tableau workbook
  # tableau/hr_workforce_analysis.twbx

  ---
  Stack

  ┌─────────────────┬─────────────────────────────────────┐
  │      Layer      │             Technology              │
  ├─────────────────┼─────────────────────────────────────┤
  │ Database        │ PostgreSQL                          │
  ├─────────────────┼─────────────────────────────────────┤
  │ Analytics       │ SQL (Views, CTEs, Window Functions) │
  ├─────────────────┼─────────────────────────────────────┤
  │ Automation      │ Python (psycopg2, pandas)           │
  ├─────────────────┼─────────────────────────────────────┤
  │ Visualization   │ Tableau                             │
  ├─────────────────┼─────────────────────────────────────┤
  │ Version Control │ Git / GitHub                        │
  └─────────────────┴─────────────────────────────────────┘

  ---
  Connect

  - GitHub: evgeniimatveev (https://github.com/evgeniimatveev)
  - Portfolio: datascienceportfol.io/evgeniimatveevusa (https://www.datascienceportfol.io/evgeniimatveevusa)
  - LinkedIn: Evgenii Matveev (https://www.linkedin.com/in/evgenii-matveev-510926276/)

  </details>
