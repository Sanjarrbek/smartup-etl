# import os
# import pandas as pd

# from config import ENDPOINTS, OUTPUT_DIR, get_headers
# from client import fetch
# from loader import save_to_db


# # — Transform funksiyalari —————————————————————————————————————

# def build_customers(raw: pd.DataFrame) -> pd.DataFrame:
#     df = raw[raw["state"] == "A"].copy()

#     columns = [
#         "person_id", "code", "name", "short_name",
#         "phone", "email", "inn", "pinfl",
#         "birth_date", "gender", "address",
#         "region_code", "district_code",
#     ]

#     df = df[[c for c in columns if c in df.columns]]

#     df["person_id"] = pd.to_numeric(df["person_id"], errors="coerce").astype("Int64")

#     return df.drop_duplicates(subset=["person_id"]).reset_index(drop=True)


# # — Run ————————————————————————————————————————————————————————

# def run():
#     print("=== Customers pipeline ===")

#     # 1. Extract
#     raw = fetch(ENDPOINTS["natural_person"], get_headers(), key="natural_person")
#     if raw.empty:
#         print("[WARN] Ma'lumot kelmadi")
#         return

#     # 2. Transform
#     customers = build_customers(raw)

#     # 3. Load — Excel
#     customers.to_excel(os.path.join(OUTPUT_DIR, "customers.xlsx"), index=False)

#     # 4. Load — PostgreSQL
#     save_to_db(customers, "customers")

#     print("=== Customers pipeline tugadi ===")


import os
import pandas as pd

from config import ENDPOINTS, OUTPUT_DIR, get_headers
from client import fetch
from loader import save_to_db


def build_customers(raw: pd.DataFrame) -> pd.DataFrame:
    df = raw.copy()

    # Nested ustunlarni ajratamiz
    if "groups" in df.columns:
        df = df.drop(columns=["groups"])
    if "rooms" in df.columns:
        df = df.drop(columns=["rooms"])

    columns = [
        "person_id", "first_name", "last_name", "middle_name",
        "code", "birthday", "gender", "region_name", "region_code",
        "address", "post_address", "is_budgetarian", "state",
        "legal_person_code", "web", "telegram", "is_client",
        "is_supplier", "main_phone", "email", "latlng",
    ]

    df = df[[c for c in columns if c in df.columns]]
    df["person_id"] = pd.to_numeric(df["person_id"], errors="coerce").astype("Int64")

    return df.drop_duplicates(subset=["person_id"]).reset_index(drop=True)


def build_customer_groups(raw: pd.DataFrame) -> pd.DataFrame:
    rows = []
    for _, item in raw.iterrows():
        groups = item.get("groups", [])
        if isinstance(groups, list):
            for g in groups:
                rows.append({
                    "person_id": item.get("person_id"),
                    "group_code": g.get("group_code"),
                    "type_code": g.get("type_code"),
                })
    return pd.DataFrame(rows)


def build_customer_rooms(raw: pd.DataFrame) -> pd.DataFrame:
    rows = []
    for _, item in raw.iterrows():
        rooms = item.get("rooms", [])
        if isinstance(rooms, list):
            for r in rooms:
                rows.append({
                    "person_id": item.get("person_id"),
                    "room_id": r.get("room_id"),
                    "room_code": r.get("room_code"),
                    "room_type_code": r.get("room_type_code"),
                })
    return pd.DataFrame(rows)


def run():
    print("=== Natural person pipeline ===")

    raw = fetch(ENDPOINTS["natural_person"], get_headers(), key="natural_person")
    if raw.empty:
        print("[WARN] Ma'lumot kelmadi")
        return

    print(f"[OK] {len(raw)} ta yozuv olindi")

    # 2. Transform
    customers = build_customers(raw)
    customer_groups = build_customer_groups(raw)
    customer_rooms = build_customer_rooms(raw)

    # 3. Load — Excel
    customers.to_excel(os.path.join(OUTPUT_DIR, "natural_person.xlsx"), index=False)
    customer_groups.to_excel(os.path.join(OUTPUT_DIR, "natural_person_groups.xlsx"), index=False)
    customer_rooms.to_excel(os.path.join(OUTPUT_DIR, "natural_person_rooms.xlsx"), index=False)

    # 4. Load — PostgreSQL
    save_to_db(customers, "natural_person")
    save_to_db(customer_groups, "natural_person_groups")
    save_to_db(customer_rooms, "natural_person_rooms")

    print("=== Natural person pipeline tugadi ===")