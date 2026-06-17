import os
import pandas as pd
import requests

from config import ENDPOINTS, OUTPUT_DIR, get_headers
from loader import save_to_db


# — Transform funksiyalari —————————————————————————————————————

def build_returns(raw: pd.DataFrame) -> pd.DataFrame:
    columns = [
        "deal_id", "filial_code", "external_id", "deal_time",
        "subfilial_code", "order_deal_id", "delivery_date",
        "delivery_number", "booked_date", "room_id", "room_code",
        "sales_manager_code", "sales_manager_name", "expeditor_code",
        "person_code", "person_id", "person_name", "person_tin",
        "van_code", "contract_code", "invoice_number",
        "payment_type_code", "note", "manager_code",
        "total_amount", "status", "return_reason_id",
        "return_reason_code", "currency_code",
    ]

    df = raw[[c for c in columns if c in raw.columns]]

    df["deal_id"]      = pd.to_numeric(df["deal_id"],      errors="coerce").astype("Int64")
    df["person_id"]    = pd.to_numeric(df["person_id"],    errors="coerce").astype("Int64")
    df["room_id"]      = pd.to_numeric(df["room_id"],      errors="coerce").astype("Int64")
    df["total_amount"] = pd.to_numeric(df["total_amount"], errors="coerce")

    return df.drop_duplicates(subset=["deal_id"]).reset_index(drop=True)


def build_return_products(raw: pd.DataFrame) -> pd.DataFrame:
    rows = []
    for _, row in raw[["deal_id", "return_products"]].iterrows():
        products = row["return_products"]
        if not isinstance(products, list):
            continue
        for p in products:
            rows.append({
                "deal_id":          row["deal_id"],
                "external_id":      p.get("external_id"),
                "product_unit_id":  p.get("product_unit_id"),
                "product_code":     p.get("product_code"),
                "product_name":     p.get("product_name"),
                "expiry_date":      p.get("expiry_date"),
                "on_balance":       p.get("on_balance"),
                "return_quant":     p.get("return_quant"),
                "serial_number":    p.get("serial_number"),
                "product_price":    p.get("product_price"),
                "margin_amount":    p.get("margin_amount"),
                "margin_kind":      p.get("margin_kind"),
                "margin_value":     p.get("margin_value"),
                "card_code":        p.get("card_code"),
                "vat_percent":      p.get("vat_percent"),
                "vat_amount":       p.get("vat_amount"),
                "sold_amount":      p.get("sold_amount"),
                "inventory_kind":   p.get("inventory_kind"),
                "price_type_code":  p.get("price_type_code"),
                "warehouse_code":   p.get("warehouse_code"),
            })

    if not rows:
        return pd.DataFrame()

    df = pd.DataFrame(rows)
    df["deal_id"]         = pd.to_numeric(df["deal_id"],         errors="coerce").astype("Int64")
    df["product_unit_id"] = pd.to_numeric(df["product_unit_id"], errors="coerce").astype("Int64")
    df["return_quant"]    = pd.to_numeric(df["return_quant"],    errors="coerce")
    df["product_price"]   = pd.to_numeric(df["product_price"],   errors="coerce")
    df["total_amount"]    = pd.to_numeric(df["sold_amount"],     errors="coerce")

    return df.reset_index(drop=True)


# — Run ————————————————————————————————————————————————————————

def run():
    print("=== Returns pipeline ===")

    # 1. Extract — POST so'rov
    headers = get_headers()
    body = {
        "filial_codes": [{"filial_code": ""}],
    }

    response = requests.post(ENDPOINTS["returns"], headers=headers, json=body)

    if response.status_code != 200:
        print(f"[XATO] Status: {response.status_code}")
        print(response.text[:200])
        return

    data = response.json()
    raw_list = data.get("return", [])

    if not raw_list:
        print("[WARN] Ma'lumot kelmadi")
        return

    print(f"[OK] {len(raw_list)} ta yozuv olindi")
    raw = pd.DataFrame(raw_list)

    # 2. Transform
    returns         = build_returns(raw)
    return_products = build_return_products(raw)

    # 3. Load — Excel
    returns.to_excel(
        os.path.join(OUTPUT_DIR, "returns.xlsx"), index=False)
    return_products.to_excel(
        os.path.join(OUTPUT_DIR, "return_products.xlsx"), index=False)

    # 4. Load — PostgreSQL
    save_to_db(returns,         "returns")
    save_to_db(return_products, "return_products")

    print("=== Returns pipeline tugadi ===")