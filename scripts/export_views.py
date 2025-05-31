import os
import pandas as pd
import psycopg2
from dotenv import load_dotenv
from datetime import datetime
from pathlib import Path

# Correct .env path
env_path = Path(__file__).resolve().parent.parent / ".env"
load_dotenv(dotenv_path=env_path)

# Print to confirm
print("🔐 DEBUG DB_PASSWORD:", os.getenv("DB_PASSWORD"))

# DB config
DB_PARAMS = {
    "dbname": os.getenv("DB_NAME"),
    "user": os.getenv("DB_USER"),
    "password": os.getenv("DB_PASSWORD"),
    "host": os.getenv("DB_HOST"),
    "port": os.getenv("DB_PORT"),
}

print("📌 Loaded DB params:", DB_PARAMS)  # optional

# Views to export
VIEWS = [
    "employee_full_info",
    "employee_salary_history",
    "avg_salary_by_department",
    "count_by_position",
    "last_salary_change",
    "salary_trends"
]

timestamp = datetime.now().strftime("%Y%m%d%H%M")

try:
    conn = psycopg2.connect(**DB_PARAMS)
    for view in VIEWS:
        print(f"📤 Exporting: {view}")
        df = pd.read_sql_query(f"SELECT * FROM {view}", conn)
        filename = f"data/{view}_{timestamp}.csv"
        df.to_csv(filename, index=False)
        print(f"✅ Saved to: {filename}")
    conn.close()
    print("\n🎉 Export complete!")

except Exception as e:
    print(f"❌ Failed: {e}")