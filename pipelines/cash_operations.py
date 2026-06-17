import os
import requests
import pandas as pd
from config import get_headers, ENDPOINTS, OUTPUT_DIR
from loader import save_to_db

def fetch_cash_operations():
    headers = get_headers()
    body = {
        "filial_codes": [{"filial_code": ""}],
    }

    response = requests.post(ENDPOINTS["cash_operations"], headers=headers, json=body)

    if response.status_code != 200:
        print(f"[XATO] Status: {response.status_code}")
        print(response.text[:200])
        return None

    data = response.json()
    return data.get("cash_operation", [])


def build_cash_operations(raw_list):
    rows = []
    for item in raw_list:
        # ref_codes — nested list, string ga aylantiramiz
        ref_codes = item.get("ref_codes", [])
        ref_str = "; ".join([
            f"{r.get('ref_type')}:{r.get('ref_id')}" for r in ref_codes
        ]) if ref_codes else None

        rows.append({
            "filial_code":             item.get("filial_code"),
            "external_id":             item.get("external_id"),
            "operation_id":            item.get("operation_id"),
            "operation_date":          item.get("operation_date"),
            "operation_number":        item.get("operation_number"),
            "subfilial_code":          item.get("subfilial_code"),
            "posted":                  item.get("posted"),
            "cashbox_code":            item.get("cashbox_code"),
            "cashflow_reason_code":    item.get("cashflow_reason_code"),
            "cashflow_kind":           item.get("cashflow_kind"),
            "corr_coa_code":           item.get("corr_coa_code"),
            "corr_person_code":        item.get("corr_person_code"),
            "currency_code":           item.get("currency_code"),
            "amount":                  item.get("amount"),
            "responsible_person_code": item.get("responsible_person_code"),
            "collector_code":          item.get("collector_code"),
            "note":                    item.get("note"),
            "ref_codes":               ref_str,
        })
    return pd.DataFrame(rows)


def run():
    print("=== Cash operations pipeline boshlandi ===")

    raw_list = fetch_cash_operations()
    if raw_list is None:
        return

    if not raw_list:
        print("[WARN] Ma'lumot kelmadi")
        return

    print(f"[OK] {len(raw_list)} ta yozuv olindi")

    df = build_cash_operations(raw_list)

    # Excel
    df.to_excel(os.path.join(OUTPUT_DIR, "cash_operations.xlsx"), index=False)

    # PostgreSQL
    save_to_db(df, "cash_operations")

    print("=== Cash operations pipeline tugadi ===")