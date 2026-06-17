import os
import pandas as pd
import requests

from config import ENDPOINTS, OUTPUT_DIR, get_headers
from loader import save_to_db


# — Transform funksiyalari —————————————————————————————————————

def build_writeoff(raw: pd.DataFrame) -> pd.DataFrame:
    columns = [
        "writeoff_id", "writeoff_number", "writeoff_date",
        "filial_code", "external_id", "status", "currency_code",
        "barcode", "warehouse_code", "reason_code", "note",
        "c_amount", "c_amount_base",
    ]

    df = raw[[c for c in columns if c in raw.columns]]

    df["writeoff_id"]    = pd.to_numeric(df["writeoff_id"],    errors="coerce").astype("Int64")
    df["c_amount"]       = pd.to_numeric(df["c_amount"],       errors="coerce")
    df["c_amount_base"]  = pd.to_numeric(df["c_amount_base"],  errors="coerce")

    return df.drop_duplicates(subset=["writeoff_id"]).reset_index(drop=True)


def build_writeoff_items(raw: pd.DataFrame) -> pd.DataFrame:
    rows = []
    for _, row in raw[["writeoff_id", "writeoff_items"]].iterrows():
        items = row["writeoff_items"]
        if not isinstance(items, list):
            continue
        for item in items:
            rows.append({
                "writeoff_id":      row["writeoff_id"],
                "external_id":      item.get("external_id"),
                "writeoff_item_id": item.get("writeoff_item_id"),
                "inventory_kind":   item.get("inventory_kind"),
                "product_code":     item.get("product_code"),
                "serial_number":    item.get("serial_number"),
                "card_code":        item.get("card_code"),
                "expiry_date":      item.get("expiry_date"),
                "quantity":         item.get("quantity"),
                "batch_number":     item.get("batch_number"),
            })

    if not rows:
        return pd.DataFrame()

    df = pd.DataFrame(rows)
    df["writeoff_id"]      = pd.to_numeric(df["writeoff_id"],      errors="coerce").astype("Int64")
    df["writeoff_item_id"] = pd.to_numeric(df["writeoff_item_id"], errors="coerce").astype("Int64")
    df["quantity"]         = pd.to_numeric(df["quantity"],         errors="coerce")

    return df.drop_duplicates(subset=["writeoff_item_id"]).reset_index(drop=True)


# — Run ————————————————————————————————————————————————————————

def run():
    print("=== Writeoff pipeline ===")

    # 1. Extract — POST so'rov
    headers = get_headers()
    body = {
        "filial_codes": [{"filial_code": ""}],
    }

    response = requests.post(ENDPOINTS["writeoff"], headers=headers, json=body)

    if response.status_code != 200:
        print(f"[XATO] Status: {response.status_code}")
        print(response.text[:200])
        return

    data = response.json()
    raw_list = data.get("writeoff", [])

    if not raw_list:
        print("[WARN] Ma'lumot kelmadi")
        return

    print(f"[OK] {len(raw_list)} ta yozuv olindi")
    raw = pd.DataFrame(raw_list)

    # 2. Transform
    writeoff       = build_writeoff(raw)
    writeoff_items = build_writeoff_items(raw)

    # 3. Load — Excel
    writeoff.to_excel(
        os.path.join(OUTPUT_DIR, "writeoff.xlsx"), index=False)
    writeoff_items.to_excel(
        os.path.join(OUTPUT_DIR, "writeoff_items.xlsx"), index=False)

    # 4. Load — PostgreSQL
    save_to_db(writeoff,       "writeoff")
    save_to_db(writeoff_items, "writeoff_items")

    print("=== Writeoff pipeline tugadi ===")