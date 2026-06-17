import os
import pandas as pd
import requests

from config import ENDPOINTS, OUTPUT_DIR, get_headers
from loader import save_to_db


# — Transform funksiyalari —————————————————————————————————————

def build_return_to_supplier(raw: pd.DataFrame) -> pd.DataFrame:
    columns = [
        "return_id", "filial_code", "external_id",
        "return_date", "status", "warehouse_code",
        "supplier_code", "currency_code", "note", "total_amount",
    ]

    df = raw[[c for c in columns if c in raw.columns]]

    if "return_id" in df.columns:
        df["return_id"] = pd.to_numeric(df["return_id"], errors="coerce").astype("Int64")
    if "total_amount" in df.columns:
        df["total_amount"] = pd.to_numeric(df["total_amount"], errors="coerce")

    return df.drop_duplicates(subset=["return_id"]).reset_index(drop=True)


def build_return_to_supplier_items(raw: pd.DataFrame) -> pd.DataFrame:
    rows = []
    item_col = None
    for col in ["return_items", "items", "products"]:
        if col in raw.columns:
            item_col = col
            break

    if not item_col:
        return pd.DataFrame()

    for _, row in raw[["return_id", item_col]].iterrows():
        items = row[item_col]
        if not isinstance(items, list):
            continue
        for item in items:
            rows.append({
                "return_id":    row["return_id"],
                "product_code": item.get("product_code"),
                "quantity":     item.get("quantity"),
                "price":        item.get("price"),
                "amount":       item.get("amount"),
            })

    if not rows:
        return pd.DataFrame()

    df = pd.DataFrame(rows)
    df["return_id"] = pd.to_numeric(df["return_id"], errors="coerce").astype("Int64")
    df["quantity"]  = pd.to_numeric(df["quantity"],  errors="coerce")
    df["price"]     = pd.to_numeric(df["price"],     errors="coerce")
    df["amount"]    = pd.to_numeric(df["amount"],    errors="coerce")

    return df.reset_index(drop=True)


# — Run ————————————————————————————————————————————————————————

def run():
    print("=== Return to Supplier pipeline ===")

    # 1. Extract — POST so'rov
    headers = get_headers()
    body = {
        "filial_codes": [{"filial_code": ""}],
    }

    response = requests.post(
        ENDPOINTS["return_to_supplier"], headers=headers, json=body
    )

    if response.status_code != 200:
        print(f"[XATO] Status: {response.status_code}")
        print(response.text[:200])
        return

    data = response.json()
    # print(f"[DEBUG] Response keys: {list(data.keys())}")

    # response key ni topamiz
    raw_list = (
        data.get("return") or
        data.get("returns") or
        data.get("return_to_supplier") or
        []
    )

    if not raw_list:
        print("[WARN] Ma'lumot kelmadi")
        return

    print(f"[OK] {len(raw_list)} ta yozuv olindi")
    raw = pd.DataFrame(raw_list)

    # 2. Transform
    return_to_supplier       = build_return_to_supplier(raw)
    return_to_supplier_items = build_return_to_supplier_items(raw)

    # 3. Load — Excel
    return_to_supplier.to_excel(
        os.path.join(OUTPUT_DIR, "return_to_supplier.xlsx"), index=False)
    if not return_to_supplier_items.empty:
        return_to_supplier_items.to_excel(
            os.path.join(OUTPUT_DIR, "return_to_supplier_items.xlsx"), index=False)

    # 4. Load — PostgreSQL
    save_to_db(return_to_supplier, "return_to_supplier")
    if not return_to_supplier_items.empty:
        save_to_db(return_to_supplier_items, "return_to_supplier_items")

    print("=== Return to Supplier pipeline tugadi ===")