import os
import requests
import pandas as pd
from config import get_headers, ENDPOINTS, OUTPUT_DIR
from loader import save_to_db

def fetch_payments():
    headers = get_headers()
    body = {
        "filial_codes": [{"filial_code": ""}],
    }

    response = requests.post(ENDPOINTS["payment_from_client"], headers=headers, json=body)

    if response.status_code != 200:
        print(f"[XATO] Status: {response.status_code}")
        print(response.text[:200])
        return None

    data = response.json()
    return data.get("cashin", [])


def build_payments(raw_list):
    rows = []
    for item in raw_list:
        rows.append({
            "filial_code":        item.get("filial_code"),
            "external_id":        item.get("external_id"),
            "cashin_id":          item.get("cashin_id"),
            "cashin_time":        item.get("cashin_time"),
            "cashin_date":        item.get("cashin_date"),
            "cashin_number":      item.get("cashin_number"),
            "bill_collector_code":item.get("bill_collector_code"),
            "client_code":        item.get("client_code"),
            "client_id":          item.get("client_id"),
            "client_name":        item.get("client_name"),
            "client_tin":         item.get("client_tin"),
            "subfilial_code":     item.get("subfilial_code"),
            "contract_code":      item.get("contract_code"),
            "payment_type_code":  item.get("payment_type_code"),
            "currency_code":      item.get("currency_code"),
            "cashbox_code":       item.get("cashbox_code"),
            "bank_account_code":  item.get("bank_account_code"),
            "amount":             item.get("amount"),
            "posted":             item.get("posted"),
            "bank_trans_number":  item.get("bank_trans_number"),
            "bank_trans_date":    item.get("bank_trans_date"),
            "note":               item.get("note"),
        })
    return pd.DataFrame(rows)


def run():
    print("=== Payment from client pipeline boshlandi ===")

    raw_list = fetch_payments()
    if raw_list is None:
        return

    if not raw_list:
        print("[WARN] Ma'lumot kelmadi")
        return

    print(f"[OK] {len(raw_list)} ta yozuv olindi")

    df = build_payments(raw_list)

    # Excel
    df.to_excel(os.path.join(OUTPUT_DIR, "payment_from_client.xlsx"), index=False)

    # PostgreSQL
    save_to_db(df, "payment_from_client")

    print("=== Payment from client pipeline tugadi ===")