

# 🧠 HR BI Project — PostgreSQL + SQL + Tableau + Python Automation

![PostgreSQL](https://img.shields.io/badge/PostgreSQL-Database-blue?logo=postgresql&logoColor=white)
![Python](https://img.shields.io/badge/Python-Automation-yellow?logo=python&logoColor=black)
![Tableau](https://img.shields.io/badge/Tableau-Visualization-orange?logo=tableau&logoColor=white)
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
