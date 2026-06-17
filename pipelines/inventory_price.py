import os
import pandas as pd

from config import ENDPOINTS, OUTPUT_DIR, get_headers
from client import fetch
from loader import save_to_db


# — Transform funksiyalari —————————————————————————————————————

def build_inventory_price(raw: pd.DataFrame) -> pd.DataFrame:
    rows = []
    for _, row in raw[["inventory_code", "inventory_barcode", "price_type"]].iterrows():
        price_types = row["price_type"]
        if not isinstance(price_types, list):
            continue
        for pt in price_types:
            rows.append({
                "inventory_code":    row["inventory_code"],
                "inventory_barcode": row["inventory_barcode"],
                "price_type_code":   pt.get("price_type_code"),
                "card_code":         pt.get("card_code"),
                "price":             pt.get("price"),
            })

    if not rows:
        return pd.DataFrame(columns=[
            "inventory_code", "inventory_barcode",
            "price_type_code", "card_code", "price"
        ])

    df = pd.DataFrame(rows)
    df["price"] = pd.to_numeric(df["price"], errors="coerce")
    return df.drop_duplicates(
        subset=["inventory_code", "price_type_code"]
    ).reset_index(drop=True)


# — Run ————————————————————————————————————————————————————————

def run():
    print("=== Inventory Price pipeline ===")

    # 1. Extract
    raw = fetch(ENDPOINTS["inventory_price"], get_headers(), key="inventory")
    if raw.empty:
        print("[WARN] Ma'lumot kelmadi")
        return

    # 2. Transform
    inventory_price = build_inventory_price(raw)

    # 3. Load — Excel
    inventory_price.to_excel(
        os.path.join(OUTPUT_DIR, "inventory_price.xlsx"), index=False
    )

    # 4. Load — PostgreSQL
    save_to_db(inventory_price, "inventory_price")

    print("=== Inventory Price pipeline tugadi ===")