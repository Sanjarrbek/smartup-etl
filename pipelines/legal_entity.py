import os
import pandas as pd

from config import ENDPOINTS, OUTPUT_DIR, get_headers
from client import fetch
from loader import save_to_db


# — Transform funksiyalari —————————————————————————————————————

def build_legal_entity(raw: pd.DataFrame) -> pd.DataFrame:
    df = raw[raw["state"] == "A"].copy()

    columns = [
        "person_id", "name", "code", "short_name",
        "region_code", "is_budgetarian", "tin", "state",
        "primary_person_code", "parent_person_code", "barcode",
        "vat_code", "cea", "main_phone", "email", "web",
        "address", "address_guide", "zip_code", "latlng",
        "is_client", "is_supplier",
    ]

    df = df[[c for c in columns if c in df.columns]]

    df["person_id"] = pd.to_numeric(df["person_id"], errors="coerce").astype("Int64")

    return df.drop_duplicates(subset=["person_id"]).reset_index(drop=True)


def build_legal_entity_groups(raw: pd.DataFrame) -> pd.DataFrame:
    rows = []
    for _, row in raw[["person_id", "groups"]].iterrows():
        groups = row["groups"]
        if not isinstance(groups, list):
            continue
        for g in groups:
            rows.append({
                "person_id":  row["person_id"],
                "group_code": g.get("group_code"),
                "type_code":  g.get("type_code"),
            })

    if not rows:
        return pd.DataFrame(columns=["person_id", "group_code", "type_code"])

    df = pd.DataFrame(rows)
    df["person_id"] = pd.to_numeric(df["person_id"], errors="coerce").astype("Int64")
    return df.drop_duplicates().reset_index(drop=True)


def build_legal_entity_bank_accounts(raw: pd.DataFrame) -> pd.DataFrame:
    rows = []
    for _, row in raw[["person_id", "bank_accounts"]].iterrows():
        accounts = row["bank_accounts"]
        if not isinstance(accounts, list):
            continue
        for a in accounts:
            rows.append({
                "person_id":        row["person_id"],
                "bank_account_id":  a.get("bank_account_id"),
                "bank_account_code":a.get("bank_account_code"),
                "bank_account_name":a.get("bank_account_name"),
                "is_main":          a.get("is_main"),
                "currency_code":    a.get("currency_code"),
                "state":            a.get("state"),
                "mfo":              a.get("mfo"),
                "bank_name":        a.get("bank_name"),
            })

    if not rows:
        return pd.DataFrame(columns=[
            "person_id", "bank_account_id", "bank_account_code",
            "bank_account_name", "is_main", "currency_code",
            "state", "mfo", "bank_name"
        ])

    df = pd.DataFrame(rows)
    df["person_id"] = pd.to_numeric(df["person_id"], errors="coerce").astype("Int64")
    return df.drop_duplicates(subset=["bank_account_id"]).reset_index(drop=True)


# — Run ————————————————————————————————————————————————————————

def run():
    print("=== Legal Entity pipeline ===")

    # 1. Extract
    raw = fetch(ENDPOINTS["legal_entity"], get_headers(), key="legal_person")
    if raw.empty:
        print("[WARN] Ma'lumot kelmadi")
        return

    # 2. Transform
    legal_entity        = build_legal_entity(raw)
    legal_entity_groups = build_legal_entity_groups(raw)
    legal_entity_banks  = build_legal_entity_bank_accounts(raw)

    # 3. Load — Excel
    legal_entity.to_excel(
        os.path.join(OUTPUT_DIR, "legal_entity.xlsx"), index=False)
    legal_entity_groups.to_excel(
        os.path.join(OUTPUT_DIR, "legal_entity_groups.xlsx"), index=False)
    legal_entity_banks.to_excel(
        os.path.join(OUTPUT_DIR, "legal_entity_banks.xlsx"), index=False)

    # 4. Load — PostgreSQL
    save_to_db(legal_entity,        "legal_entity")
    save_to_db(legal_entity_groups, "legal_entity_groups")
    save_to_db(legal_entity_banks,  "legal_entity_banks")

    print("=== Legal Entity pipeline tugadi ===")