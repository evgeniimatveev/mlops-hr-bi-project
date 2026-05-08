import os
import sys
import pandas as pd
import psycopg2
from psycopg2 import OperationalError, ProgrammingError
from dotenv import load_dotenv
from datetime import datetime
from pathlib import Path

# Load .env
env_path = Path(__file__).resolve().parent.parent / ".env"
load_dotenv(dotenv_path=env_path)

# Validate environment variables
def validate_env_vars():
    """Check that all required DB env vars are set."""
    required_vars = ["DB_NAME", "DB_USER", "DB_PASSWORD", "DB_HOST", "DB_PORT"]
    missing = [var for var in required_vars if not os.getenv(var)]

    if missing:
        print(f"❌ Missing environment variables: {', '.join(missing)}")
        print(f"📝 Ensure .env exists at: {env_path}")
        return False
    return True

# DB config
DB_PARAMS = {
    "dbname": os.getenv("DB_NAME"),
    "user": os.getenv("DB_USER"),
    "password": os.getenv("DB_PASSWORD"),
    "host": os.getenv("DB_HOST"),
    "port": int(os.getenv("DB_PORT", 5432)),
}

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
conn = None

try:
    # Validate env vars first
    if not validate_env_vars():
        sys.exit(1)

    print(f"📌 Connecting to {DB_PARAMS['host']}:{DB_PARAMS['port']}/{DB_PARAMS['dbname']}...")
    conn = psycopg2.connect(**DB_PARAMS)
    print("✅ Connected to PostgreSQL\n")

    for view in VIEWS:
        try:
            print(f"📤 Exporting: {view}")
            df = pd.read_sql_query(f"SELECT * FROM {view}", conn)

            # Ensure data directory exists
            Path("data").mkdir(exist_ok=True)

            filename = f"data/{view}_{timestamp}.csv"
            df.to_csv(filename, index=False)
            print(f"✅ Saved to: {filename} ({len(df)} rows)\n")

        except ProgrammingError as e:
            print(f"⚠️  View '{view}' not found or SQL error:")
            print(f"   {e.diag.message_primary if hasattr(e, 'diag') else str(e)}\n")

        except Exception as e:
            print(f"❌ Export failed for '{view}': {e}\n")

    print("🎉 Export cycle complete!")

except OperationalError as e:
    print(f"❌ Database connection failed:")
    print(f"   Host: {DB_PARAMS['host']}:{DB_PARAMS['port']}")
    print(f"   Database: {DB_PARAMS['dbname']}")
    print(f"   Error: {e}")
    print(f"\n💡 Check that PostgreSQL is running and credentials are correct.")
    sys.exit(1)

except psycopg2.Error as e:
    print(f"❌ PostgreSQL error: {e}")
    sys.exit(1)

except Exception as e:
    print(f"❌ Unexpected error: {e}")
    sys.exit(1)

finally:
    if conn:
        conn.close()
        print("🔌 Connection closed.")