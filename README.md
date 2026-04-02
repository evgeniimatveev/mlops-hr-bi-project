# 🧠 HR BI Project — PostgreSQL + SQL + Tableau + Python Automation

![PostgreSQL](https://img.shields.io/badge/PostgreSQL-Database-blue?logo=postgresql&logoColor=white)
![Python](https://img.shields.io/badge/Python-Automation-yellow?logo=python&logoColor=black)
![Tableau](https://img.shields.io/badge/Tableau-Visualization-orange?logo=tableau&logoColor=white)
![License](https://img.shields.io/badge/License-MIT-green.svg)
![Status](https://img.shields.io/badge/Status-Active-brightgreen)

This project is a **Business Intelligence (BI) showcase** built on real HR data.  
It integrates **PostgreSQL + SQL Views + Python Export + Tableau Dashboards**, making it perfect for **data storytelling** and **job interview presentations**.

---

## 📊 Project Overview

**HR_BI** is a lightweight HR analytics platform.  
It supports SQL-based queries and **automatically exports analytical views** into `.csv` files for Tableau.

---

## 🔧 Tech Stack

- 🛢️ **PostgreSQL** – backend storage for HR data  
- 🧠 **DBeaver** – ERD and database management  
- 🐍 **Python** – automation of `.csv` view exports  
- 📊 **Tableau** – storytelling and dashboarding  
- ⚙️ **VS Code** – full project environment  
- 🔐 **dotenv** – secret and config management  

---
- 🧠 **DBeaver** – SQL query testing, ERD design, and live view debugging

## 📁 Project Structure

```bash
mlops_hr_bi_project/
│
├── README.md
├── .env.example
├── requirements.txt
│
├── data/                    # exported CSV views
│   ├── employee_full_info_*.csv
│   ├── avg_salary_by_department_*.csv
│   ├── count_by_position_*.csv
│   └── salary_trends_*.csv
│
├── sql/
│   ├── ddl/
│   │   ├── create_tables.sql
│   │   └── create_views.sql
│   ├── dml/
│   │   └── insert_data.sql
│   └── dql/
│       ├── analysis_queries.sql    
│       └── test_selects.sql 
│
├── scripts/
│   └── export_views.py
│
└── tableau/
    ├── hr_workforce_analysis.twbx
    └── screenshots/
        ├── story_overview.png
        └── trends.png
```

| Story Section              | PDF Link |
|---------------------------|----------|
| 📊 Employees per Department | [Story 1](https://github.com/evgeniimatveev/mlops-hr-bi-project/blob/main/tableau/screenshots/Story%201.pdf) |
| 💼 Employees per Position   | [Story 2](https://github.com/evgeniimatveev/mlops-hr-bi-project/blob/main/tableau/screenshots/Story%202.pdf) |
| 💰 Avg Salary by Department | [Story 3](https://github.com/evgeniimatveev/mlops-hr-bi-project/blob/main/tableau/screenshots/Story%203.pdf) |
| 🧠 Who Earns More?          | [Story 4](https://github.com/evgeniimatveev/mlops-hr-bi-project/blob/main/tableau/screenshots/Story%204.pdf) |
| 📈 Hiring Trend             | [Story 5](https://github.com/evgeniimatveev/mlops-hr-bi-project/blob/main/tableau/screenshots/Story%205.pdf) |

📄 Download Story PDFs

Each story point is exported as a PDF for quick access or offline use.


🗂️ Downloadable Tableau Stories (PDFs)
Every story point from the Tableau dashboard is exported as a standalone PDF.
These are perfect for quick reviews, presentations, or adding to your job interview materials.

⚙️ How It Works
- SQL scripts create the schema and generate analytical views

- Python exports those views into .csv for Tableau

- Tableau dashboards visualize key metrics and patterns

- 📌 Example Views
```bash
-- View: Average salary by department

SELECT dept_name, AVG(salary) AS avg_salary
FROM employee_full_info
GROUP BY dept_name;

-- View: Employees with latest salary change

SELECT emp_id, emp_name, MAX(changed_at) AS last_changed_at
FROM employee_salary_history
GROUP BY emp_id, emp_name;
```
💾 .env Setup
```bash
DB_NAME=hr_bi
DB_USER=postgres
DB_PASSWORD=your_password
DB_HOST=localhost
DB_PORT=5432

```
🚀 How to Run
```bash
# Activate environment

conda activate mlops_hr_bi_env

# Export all views into /data/

python scripts/export_views.py
```


📸 Dashboard Preview
<p align="center"> <img src="https://github.com/evgeniimatveev/mlops-hr-bi-project/blob/main/tableau/screenshots/Dashboard.png?raw=true" width="900"/> <br><em>Main Tableau dashboard: workforce structure, role-level salary distribution, and departmental salary overview</em> </p>


---

## 📘 Tableau Assets

### 🔗 Workbook
- 📂 [Download Tableau Workbook (.twbx)](https://github.com/evgeniimatveev/mlops-hr-bi-project/blob/main/tableau/hr_workforce_analysis.twbx)

### 📄 Story Exports
- 📊 [Workforce Distribution by Department](https://github.com/evgeniimatveev/mlops-hr-bi-project/blob/main/tableau/screenshots/Workforce_Distribution_by_Department.pdf)
- 💼 [Salary Distribution by Role](https://github.com/evgeniimatveev/mlops-hr-bi-project/blob/main/tableau/screenshots/Salary_Distribution_by_Role.pdf)
- 💰 [Average Salary by Department](https://github.com/evgeniimatveev/mlops-hr-bi-project/blob/main/tableau/screenshots/Average_Salary_by_Department.pdf)
- 🧠 [Salary Comparison Across Roles](https://github.com/evgeniimatveev/mlops-hr-bi-project/blob/main/tableau/screenshots/Salary_Comparison_Across_Roles.pdf)
- 📈 [Hiring Trend Over Time](https://github.com/evgeniimatveev/mlops-hr-bi-project/blob/main/tableau/screenshots/Hiring_Trend_Over_Time.pdf)

---

## 🧩 Business Questions Answered

This project explores key HR and workforce analytics questions:

- 📊 Which department has the largest workforce?
- 💰 Which roles receive the highest salary investment?
- 🧠 Which department leads in average compensation?
- ⚖️ Are salaries evenly distributed across roles?
- 📈 How has hiring activity evolved over time?

---

## 🔍 Key Insights

### 1️⃣ Workforce Distribution by Department
- Marketing has the largest team → strong focus on growth and brand expansion  
- Engineering, Finance, and HR maintain balanced team sizes  
- Sales has the smallest headcount → possibly efficiency-driven  

---

### 2️⃣ Salary Distribution by Role
- Marketing Analyst and DevOps Engineer lead in total salary spend  
- Indicates investment in both **technical** and **growth-oriented roles**

---

### 3️⃣ Average Salary by Department
- Engineering ranks highest in average salary  
- Marketing follows closely  
- Suggests strong demand for **technical + creative skill sets**

---

### 4️⃣ Salary Comparison Across Roles
- Salary distribution is **not uniform**
- High-impact roles receive significantly higher compensation  
- Reflects performance-driven compensation strategy  

---

### 5️⃣ Hiring Trend Over Time
- Peak hiring observed in **2020–2021**
- Followed by stabilization period  
- Indicates shift from **rapid scaling → operational optimization**

---

## ⚙️ How It Works

- 🛢️ SQL scripts → create schema + analytical views  
- 🐍 Python → exports views into `.csv`  
- 📊 Tableau → builds dashboards & story insights  
- 🌐 GitHub → hosts full project + presentation layer  

---

## 📌 Example SQL Logic

```sql
-- Average salary by department
SELECT dept_name, AVG(salary) AS avg_salary
FROM employee_full_info
GROUP BY dept_name;
```
```sql
-- Latest salary change by employee
SELECT emp_id, emp_name, MAX(changed_at) AS last_changed_at
FROM employee_salary_history
GROUP BY emp_id, emp_name;
```

## 📢 Stay Connected!  
💻 **GitHub Repository:** [Evgenii Matveev](https://github.com/evgeniimatveev)  
🌐 **Portfolio:** [Data Science Portfolio](https://www.datascienceportfol.io/evgeniimatveevusa)  
📌 **LinkedIn:** [Evgenii Matveev](https://www.linkedin.com/in/evgenii-matveev-510926276/)  



# 🧠 HR BI Project — PostgreSQL + SQL + Tableau + Python Automation

![PostgreSQL](https://img.shields.io/badge/PostgreSQL-Database-blue?logo=postgresql&logoColor=white)
![Python](https://img.shields.io/badge/Python-Automation-yellow?logo=python&logoColor=black)
![Tableau](https://img.shields.io/badge/Tableau-Visualization-orange?logo=tableau&logoColor=white)
![License](https://img.shields.io/badge/License-MIT-green.svg)
![Status](https://img.shields.io/badge/Status-Active-brightgreen)

---

## 📊 Project Overview

This project is a **Business Intelligence (BI) showcase** built on HR data.

It demonstrates a full pipeline:

**PostgreSQL → SQL Views → Python Export → Tableau Dashboard → Storytelling**

Designed for:
- portfolio
- interviews
- real-world BI workflow demonstration

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
SELECT dept_name, AVG(salary) AS avg_salary
FROM employee_full_info
GROUP BY dept_name;
```

```sql
SELECT emp_id, emp_name, MAX(changed_at)
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

- 💻 GitHub: https://github.com/evgeniimatveev  
- 🌐 Portfolio: https://www.datascienceportfol.io/evgeniimatveevusa  
- 📌 LinkedIn: https://www.linkedin.com/in/evgenii-matveev-510926276/  

---
