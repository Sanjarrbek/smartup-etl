import os
import requests
import pandas as pd

from config import ENDPOINTS, OUTPUT_DIR, get_headers
from loader import save_to_db


def build_orders(raw: pd.DataFrame) -> pd.DataFrame:
    columns = [
        "deal_id", "external_id", "filial_code", "subfilial_code",
        "deal_time", "delivery_date", "booked_date", "total_amount",
        "room_id", "room_code", "room_name",
        "sales_manager_id", "sales_manager_code", "sales_manager_name",
        "person_id", "person_code", "person_name", "person_tin",
        "currency_code", "payment_type_code", "contract_code",
        "invoice_number", "visit_id", "status", "note",
        "total_weight_netto", "total_weight_brutto", "total_litre",
    ]

    df = raw[[c for c in columns if c in raw.columns]]

    df["deal_id"]      = pd.to_numeric(df["deal_id"],      errors="coerce").astype("Int64")
    df["person_id"]    = pd.to_numeric(df["person_id"],    errors="coerce").astype("Int64")
    df["total_amount"] = pd.to_numeric(df["total_amount"], errors="coerce")
    df["deal_time"]    = pd.to_datetime(df["deal_time"],   errors="coerce")

    return df.drop_duplicates(subset=["deal_id"]).reset_index(drop=True)


def build_order_products(raw: pd.DataFrame) -> pd.DataFrame:
    rows = []
    for _, item in raw.iterrows():
        products = item.get("order_products", [])
        if isinstance(products, list):
            for p in products:
                rows.append({
                    "deal_id":        item.get("deal_id"),
                    "product_code":   p.get("product_code"),
                    "product_name":   p.get("product_name"),
                    "order_quant":    p.get("order_quant"),
                    "sold_quant":     p.get("sold_quant"),
                    "return_quant":   p.get("return_quant"),
                    "product_price":  p.get("product_price"),
                    "sold_amount":    p.get("sold_amount"),
                    "vat_amount":     p.get("vat_amount"),
                    "vat_percent":    p.get("vat_percent"),
                    "warehouse_code": p.get("warehouse_code"),
                    "card_code":      p.get("card_code"),
                    "price_type_code":p.get("price_type_code"),
                })
    return pd.DataFrame(rows)


def run():
    print("=== Orders pipeline ===")

    headers = get_headers()
    body = {
        "filial_codes": [{"filial_code": ""}],
        "statuses": [""],
    }

    response = requests.post(ENDPOINTS["orders"], headers=headers, json=body)

    if response.status_code != 200:
        print(f"[XATO] Status: {response.status_code}")
        print(response.text[:200])
        return

    data = response.json()
    raw_list = data.get("order", [])

    if not raw_list:
        print("[WARN] Ma'lumot kelmadi")
        return

    print(f"[OK] {len(raw_list)} ta yozuv olindi")
    raw = pd.DataFrame(raw_list)

    # 2. Transform
    orders = build_orders(raw)
    order_products = build_order_products(raw)

    # 3. Load — Excel
    orders.to_excel(os.path.join(OUTPUT_DIR, "orders.xlsx"), index=False)
    order_products.to_excel(os.path.join(OUTPUT_DIR, "order_products.xlsx"), index=False)

    # 4. Load — PostgreSQL
    save_to_db(orders, "orders")
    save_to_db(order_products, "order_products")

    print("=== Orders pipeline tugadi ===")




# import os
# import requests
# import pandas as pd

# from config import ENDPOINTS, OUTPUT_DIR, get_headers, FILIAL_ID
# from loader import save_to_db


# # — Transform funksiyalari —————————————————————————————————————

# def build_orders(raw: pd.DataFrame) -> pd.DataFrame:
#     columns = [
#         "deal_id", "deal_no", "deal_date",
#         "filial_code", "external_id",
#         "person_id", "total_amount",
#         "discount_amount", "status",
#     ]

#     df = raw[[c for c in columns if c in raw.columns]]

#     df["deal_id"]      = pd.to_numeric(df["deal_id"],      errors="coerce").astype("Int64")
#     df["person_id"]    = pd.to_numeric(df["person_id"],    errors="coerce").astype("Int64")
#     df["total_amount"] = pd.to_numeric(df["total_amount"], errors="coerce")

#     return df.drop_duplicates(subset=["deal_id"]).reset_index(drop=True)


# # — Run ————————————————————————————————————————————————————————

# def run():
#     print("=== Orders pipeline ===")

#     # 1. Extract — POST so'rov
#     headers = get_headers()
#     body = {
#     "filial_codes": [{"filial_code": ""}],
#     "statuses": [""],
# }

#     response = requests.post(ENDPOINTS["orders"], headers=headers, json=body)

#     if response.status_code != 200:
#         print(f"[XATO] Status: {response.status_code}")
#         print(response.text[:200])
#         return

#     data = response.json()
#     raw_list = data.get("order", [])

#     if not raw_list:
#         print("[WARN] Ma'lumot kelmadi")
#         return

#     print(f"[OK] {len(raw_list)} ta yozuv olindi")
#     raw = pd.DataFrame(raw_list)

#     # 2. Transform
#     orders = build_orders(raw)

#     # 3. Load — Excel
#     orders.to_excel(os.path.join(OUTPUT_DIR, "orders.xlsx"), index=False)

#     # 4. Load — PostgreSQL
#     save_to_db(orders, "orders")

#     print("=== Orders pipeline tugadi ===")






# — Eski kod (GET usuli, ishlamadi — 404) ———————————————————————
# import os
# import pandas as pd
# from config import ENDPOINTS, OUTPUT_DIR, get_headers
# from client import fetch
# from loader import save_to_db
#
# def build_orders(raw: pd.DataFrame) -> pd.DataFrame:
#     df = raw[raw["state"] == "A"].copy()
#     columns = [
#         "order_id", "order_no", "order_date",
#         "person_id", "filial_id", "filial_code",
#         "currency_code", "total_amount",
#         "discount_amount", "status",
#     ]
#     df = df[[c for c in columns if c in df.columns]]
#     df["order_id"]     = pd.to_numeric(df["order_id"],     errors="coerce").astype("Int64")
#     df["person_id"]    = pd.to_numeric(df["person_id"],    errors="coerce").astype("Int64")
#     df["filial_id"]    = pd.to_numeric(df["filial_id"],    errors="coerce").astype("Int64")
#     df["total_amount"] = pd.to_numeric(df["total_amount"], errors="coerce")
#     return df.drop_duplicates(subset=["order_id"]).reset_index(drop=True)
#
# def run():
#     print("=== Orders pipeline ===")
#     raw = fetch(ENDPOINTS["orders"], get_headers(), key="order")
#     if raw.empty:
#         print("[WARN] Ma'lumot kelmadi")
#         return
#     orders = build_orders(raw)
#     orders.to_excel(os.path.join(OUTPUT_DIR, "orders.xlsx"), index=False)
#     save_to_db(orders, "orders")
#     print("=== Orders pipeline tugadi ===")