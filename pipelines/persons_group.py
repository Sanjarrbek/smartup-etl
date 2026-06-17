import os
import pandas as pd

from config import ENDPOINTS, OUTPUT_DIR, get_headers
from client import fetch
from loader import save_to_db


# — Transform funksiyalari —————————————————————————————————————

def build_persons_group(raw: pd.DataFrame) -> pd.DataFrame:
    df = raw[raw["state"] == "A"].copy()

    columns = [
        "person_group_id", "code", "name",
        "person_kind", "state",
    ]

    df = df[[c for c in columns if c in df.columns]]

    df["person_group_id"] = pd.to_numeric(
        df["person_group_id"], errors="coerce"
    ).astype("Int64")

    return df.drop_duplicates(subset=["person_group_id"]).reset_index(drop=True)


def build_persons_group_types(raw: pd.DataFrame) -> pd.DataFrame:
    rows = []
    for _, row in raw[["person_group_id", "person_group_types"]].iterrows():
        types = row["person_group_types"]
        if not isinstance(types, list):
            continue
        for t in types:
            rows.append({
                "person_group_id": row["person_group_id"],
                "code":            t.get("code"),
                "name":            t.get("name"),
                "state":           t.get("state"),
                "order_no":        t.get("order_no"),
            })

    if not rows:
        return pd.DataFrame(columns=[
            "person_group_id", "code", "name", "state", "order_no"
        ])

    df = pd.DataFrame(rows)
    df["person_group_id"] = pd.to_numeric(
        df["person_group_id"], errors="coerce"
    ).astype("Int64")
    df["order_no"] = pd.to_numeric(df["order_no"], errors="coerce")
    return df.drop_duplicates().reset_index(drop=True)


# — Run ————————————————————————————————————————————————————————

def run():
    print("=== Persons Group pipeline ===")

    # 1. Extract
    raw = fetch(ENDPOINTS["persons_group"], get_headers(), key="person_group")
    if raw.empty:
        print("[WARN] Ma'lumot kelmadi")
        return

    # 2. Transform
    persons_group       = build_persons_group(raw)
    persons_group_types = build_persons_group_types(raw)

    # 3. Load — Excel
    persons_group.to_excel(
        os.path.join(OUTPUT_DIR, "persons_group.xlsx"), index=False)
    persons_group_types.to_excel(
        os.path.join(OUTPUT_DIR, "persons_group_types.xlsx"), index=False)

    # 4. Load — PostgreSQL
    save_to_db(persons_group,       "persons_group")
    save_to_db(persons_group_types, "persons_group_types")

    print("=== Persons Group pipeline tugadi ===")