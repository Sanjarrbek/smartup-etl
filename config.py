import json
import base64

# ── API ───────────────────────────────────────────────────────────────────────
PROJECT_CODE = "trade"
FILIAL_ID    = "86401"
TIMEOUT      = 30

ENDPOINTS = {
    "inventory":      "https://smartup.online/b/anor/mxsx/mr/inventory$export",
    "natural_person": "https://smartup.online/b/anor/mxsx/mr/natural_person$export",
    "orders":         "https://smartup.online/b/trade/txs/tdeal/order$export",
    "inventory_price": "https://smartup.online/b/anor/api/v2/mkf/product_price$export",
    "legal_entity": "https://smartup.online/b/anor/mxsx/mr/legal_person$export",
    "persons_group": "https://smartup.online/b/anor/mxsx/mr/person_group$export",
    "returns": "https://smartup.online/b/anor/mxsx/mdeal/return$export",
    "visits": "https://smartup.online/b/trade/txs/tvt/visit$export",
    "writeoff": "https://smartup.online/b/anor/mxsx/mkw/writeoff$export",
    "return_to_supplier": "https://smartup.online/b/anor/mxsx/mkw/return$export",
    "payment_from_client": "https://smartup.online/b/trade/txs/tcs/cashin$export",
    "cash_operations": "https://smartup.online/b/anor/mxsx/mkcs/cash_operation$export",
    "bank_statements": "https://smartup.online/b/anor/mxsx/mkcs/bank_operation$export",
}

# ── Database ──────────────────────────────────────────────────────────────────
# DB_URL = "postgresql://postgres:40089@localhost:5432/smartup"
import os
DB_URL = os.getenv("DB_URL", "postgresql://postgres:40089@localhost:5432/smartup")

# import os
# DB_URL = os.getenv("DB_URL", "postgresql://postgres:40089@host.docker.internal:5432/smartup")

# ── Output ────────────────────────────────────────────────────────────────────
OUTPUT_DIR = "CleanedData"


def get_headers() -> dict:
    with open("auth.json") as f:
        auth = json.load(f)

    token = base64.b64encode(
        f"{auth['username']}:{auth['password']}".encode()
    ).decode()

    return {
        "Authorization": f"Basic {token}",
        "project_code":  PROJECT_CODE,
        "filial_id":     FILIAL_ID,
    }
