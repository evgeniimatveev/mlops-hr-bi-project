


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
- portfolio
- interviews
- real-world BI workflow demonstration

---
A portfolio-ready HR BI project that combines SQL analytics, Python automation, and Tableau storytelling into one end-to-end workflow.
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
SELECT dept_name, AVG(salary) AS avg_salary
FROM employee_full_info
GROUP BY dept_name;
```

```sql
SELECT 
    emp_id,
    emp_name,
    MAX(changed_at) AS last_changed_at
FROM employee_salary_history
GROUP BY emp_id, emp_name;
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
