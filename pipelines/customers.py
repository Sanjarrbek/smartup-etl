import os
import pandas as pd

from config import ENDPOINTS, OUTPUT_DIR, get_headers
from client import fetch
from loader import save_to_db


# — Transform funksiyalari —————————————————————————————————————

def build_customers(raw: pd.DataFrame) -> pd.DataFrame:
    df = raw[raw["state"] == "A"].copy()

    columns = [
        "person_id", "code", "name", "short_name",
        "phone", "email", "inn", "pinfl",
        "birth_date", "gender", "address",
        "region_code", "district_code",
    ]

    df = df[[c for c in columns if c in df.columns]]

    df["person_id"] = pd.to_numeric(df["person_id"], errors="coerce").astype("Int64")

    return df.drop_duplicates(subset=["person_id"]).reset_index(drop=True)


# — Run ————————————————————————————————————————————————————————

def run():
    print("=== Customers pipeline ===")

    # 1. Extract
    raw = fetch(ENDPOINTS["natural_person"], get_headers(), key="natural_person")
    if raw.empty:
        print("[WARN] Ma'lumot kelmadi")
        return

    # 2. Transform
    customers = build_customers(raw)

    # 3. Load — Excel
    customers.to_excel(os.path.join(OUTPUT_DIR, "customers.xlsx"), index=False)

    # 4. Load — PostgreSQL
    save_to_db(customers, "customers")

    print("=== Customers pipeline tugadi ===")