import os
import requests
import pandas as pd
from config import get_headers, ENDPOINTS, OUTPUT_DIR
from loader import save_to_db

def fetch_bank_statements():
    headers = get_headers()
    body = {
        "filial_codes": [{"filial_code": ""}],
    }

    response = requests.post(ENDPOINTS["bank_statements"], headers=headers, json=body)

    if response.status_code != 200:
        print(f"[XATO] Status: {response.status_code}")
        print(response.text[:200])
        return None

    data = response.json()
    return data.get("bank_operation", [])


def build_bank_statements(raw_list):
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
            "subfilial_id":            item.get("subfilial_id"),
            "posted":                  item.get("posted"),
            "operation_date":          item.get("operation_date"),
            "operation_number":        item.get("operation_number"),
            "bank_trans_number":       item.get("bank_trans_number"),
            "bank_trans_date":         item.get("bank_trans_date"),
            "bank_account_code":       item.get("bank_account_code"),
            "cashflow_reason_code":    item.get("cashflow_reason_code"),
            "cashflow_kind":           item.get("cashflow_kind"),
            "corr_coa_code":           item.get("corr_coa_code"),
            "corr_person_code":        item.get("corr_person_code"),
            "corr_bank_account_code":  item.get("corr_bank_account_code"),
            "currency_code":           item.get("currency_code"),
            "amount":                  item.get("amount"),
            "payment_code":            item.get("payment_code"),
            "purpose":                 item.get("purpose"),
            "responsible_person_code": item.get("responsible_person_code"),
            "note":                    item.get("note"),
            "ref_codes":               ref_str,
        })
    return pd.DataFrame(rows)


def run():
    print("=== Bank statements pipeline boshlandi ===")

    raw_list = fetch_bank_statements()
    if raw_list is None:
        return

    if not raw_list:
        print("[WARN] Ma'lumot kelmadi")
        return

    print(f"[OK] {len(raw_list)} ta yozuv olindi")

    df = build_bank_statements(raw_list)

    # Excel
    df.to_excel(os.path.join(OUTPUT_DIR, "bank_statements.xlsx"), index=False)

    # PostgreSQL
    save_to_db(df, "bank_statements")

    print("=== Bank statements pipeline tugadi ===")