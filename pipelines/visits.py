import os
import pandas as pd
import requests

from config import ENDPOINTS, OUTPUT_DIR, get_headers
from loader import save_to_db


# — Transform funksiyalari —————————————————————————————————————

def build_visit_headers(raw: list) -> pd.DataFrame:
    rows = []
    for visit in raw:
        headers = visit.get("visit_headers", [])
        for h in headers:
            rows.append({
                "visit_id":                  h.get("visit_id"),
                "filial_code":               h.get("filial_code"),
                "visit_date":                h.get("visit_date"),
                "visit_start_time":          h.get("visit_start_time"),
                "visit_end_time":            h.get("visit_end_time"),
                "time_at_retail_outlet_sec": h.get("time_at_retail_outlet_sec"),
                "person_name":               h.get("person_name"),
                "person_code":               h.get("person_code"),
                "person_id":                 h.get("person_id"),
                "room_id":                   h.get("room_id"),
                "room_name":                 h.get("room_name"),
                "room_code":                 h.get("room_code"),
                "supervisor_id":             h.get("supervisor_id"),
                "sales_manager_id":          h.get("sales_manager_id"),
                "sales_manager_name":        h.get("sales_manager_name"),
                "sales_manager_code":        h.get("sales_manager_code"),
                "visit_start_location":      h.get("visit_start_location"),
                "visit_end_location":        h.get("visit_end_location"),
                "is_planned":                h.get("is_planned"),
                "visit_status":              h.get("visit_status"),
            })

    if not rows:
        return pd.DataFrame()

    df = pd.DataFrame(rows)
    df["visit_id"]   = pd.to_numeric(df["visit_id"],   errors="coerce").astype("Int64")
    df["person_id"]  = pd.to_numeric(df["person_id"],  errors="coerce").astype("Int64")
    df["room_id"]    = pd.to_numeric(df["room_id"],    errors="coerce").astype("Int64")
    return df.drop_duplicates(subset=["visit_id"]).reset_index(drop=True)


def build_visit_stocks(raw: list) -> pd.DataFrame:
    rows = []
    for visit in raw:
        headers = visit.get("visit_headers", [])
        visit_id = headers[0].get("visit_id") if headers else None
        for s in visit.get("stocks", []):
            rows.append({
                "visit_id":          visit_id,
                "stock_product_code":s.get("stock_product_code"),
                "stock_quant":       s.get("stock_quant"),
                "stock_expiry_date": s.get("stock_expiry_date"),
                "stock_card_code":   s.get("stock_card_code"),
            })

    if not rows:
        return pd.DataFrame()

    df = pd.DataFrame(rows)
    df["visit_id"]   = pd.to_numeric(df["visit_id"],   errors="coerce").astype("Int64")
    df["stock_quant"]= pd.to_numeric(df["stock_quant"],errors="coerce")
    return df.reset_index(drop=True)


def build_visit_comments(raw: list) -> pd.DataFrame:
    rows = []
    for visit in raw:
        headers = visit.get("visit_headers", [])
        visit_id = headers[0].get("visit_id") if headers else None
        for c in visit.get("comments", []):
            rows.append({
                "visit_id":               visit_id,
                "comment_name":           c.get("comment_name"),
                "comment_created_by_name":c.get("comment_created_by_name"),
            })

    if not rows:
        return pd.DataFrame()

    df = pd.DataFrame(rows)
    df["visit_id"] = pd.to_numeric(df["visit_id"], errors="coerce").astype("Int64")
    return df.reset_index(drop=True)


# — Run ————————————————————————————————————————————————————————

def run():
    print("=== Visits pipeline ===")

    # 1. Extract — POST so'rov
    headers = get_headers()
    body = {
        "filial_codes": [{"filial_code": ""}],
    }

    response = requests.post(ENDPOINTS["visits"], headers=headers, json=body)

    if response.status_code != 200:
        print(f"[XATO] Status: {response.status_code}")
        print(response.text[:200])
        return

    data = response.json()
    raw_list = data.get("visit", [])

    if not raw_list:
        print("[WARN] Ma'lumot kelmadi")
        return

    print(f"[OK] {len(raw_list)} ta yozuv olindi")

    # 2. Transform
    visit_headers  = build_visit_headers(raw_list)
    visit_stocks   = build_visit_stocks(raw_list)
    visit_comments = build_visit_comments(raw_list)

    # 3. Load — Excel
    visit_headers.to_excel(
        os.path.join(OUTPUT_DIR, "visit_headers.xlsx"), index=False)
    visit_stocks.to_excel(
        os.path.join(OUTPUT_DIR, "visit_stocks.xlsx"), index=False)
    visit_comments.to_excel(
        os.path.join(OUTPUT_DIR, "visit_comments.xlsx"), index=False)

    # 4. Load — PostgreSQL
    save_to_db(visit_headers,  "visit_headers")
    save_to_db(visit_stocks,   "visit_stocks")
    save_to_db(visit_comments, "visit_comments")

    print("=== Visits pipeline tugadi ===")