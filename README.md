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
    ├── dashboard.twbx
    └── screenshots/
        ├── story_overview.png
        └── trends.png
```

| Story Section              | PDF Link |
|---------------------------|----------|
| 📊 Employees per Department | [Story 1](https://github.com/yourname/project/blob/main/tableau/Story1.pdf) |
| 💼 Employees per Position   | [Story 2](https://github.com/yourname/project/blob/main/tableau/Story2.pdf) |
| 💰 Avg Salary by Department | [Story 3](https://github.com/yourname/project/blob/main/tableau/Story3.pdf) |
| 🧠 Who Earns More?          | [Story 4](https://github.com/yourname/project/blob/main/tableau/Story4.pdf) |
| 📈 Hiring Trend             | [Story 5](https://github.com/yourname/project/blob/main/tableau/Story5.pdf) |



🗂️ Downloadable Tableau Stories (PDFs)
Every story point from the Tableau dashboard is exported as a standalone PDF.
These are perfect for quick reviews, presentations, or adding to your job interview materials.

⚙️ How It Works
- SQL scripts create the schema and generate analytical views

- Python exports those views into .csv for Tableau

- Tableau dashboards visualize key metrics and patterns

```bash
📌 Example Views
sql
Copy
Edit
-- View: Average salary by department
SELECT dept_name, AVG(salary) AS avg_salary
FROM employee_full_info
GROUP BY dept_name;

-- View: Employees with latest salary change
SELECT emp_id, emp_name, MAX(changed_at) AS last_changed_at
FROM employee_salary_history
GROUP BY emp_id, emp_name;
```

```bash
💾 .env Setup
env
Copy
Edit
DB_NAME=hr_bi
DB_USER=postgres
DB_PASSWORD=your_password
DB_HOST=localhost
DB_PORT=5432

```
```bash
🚀 How to Run
bash
Copy
Edit
# Activate environment
conda activate mlops_hr_bi_env

# Export all views into /data/
python scripts/export_views.py
```
```bash
📸 Dashboard Preview
<p align="center"> <img src="tableau/screenshots/story_overview.png" width="600"/> <br><em>Interactive Tableau Story with hiring trends</em> </p>

```

- 🧠 Key Insights (Examples)
- Metric	Insight
- 📌 Top Department	Engineering shows highest avg salary
- 👥 Hiring Timeline	2021 had highest number of new hires
- 💰 Salary Trends	Salaries steadily increased since 2019
- 🧮 Role Distribution	Marketing + DevOps dominate non-tech hires

🧑‍💻 About the Author
- This project is part of a portfolio series focused on:

📊 Data Analytics & BI

⚙️ MLOps & Python Automation

🗃️ SQL + PostgreSQL Data Engineering

🧠 Storytelling with Tableau

🔗 Stay Connected
GitHub Projects: Evgenii Matveev

Portfolio & Resume: [SuperDataScience Link]

Tableau Public: Coming soon

- 🪄 What’s Next?
- ✔️ Finish Tableau dashboard & Story (1 file with all insights)
- 📎 Export as PDF & screenshots for resume & LinkedIn
- 📌 Add storytelling section + links once live

- ⭐ Give the repo a star if you'd use this as a template for BI storytelling projects