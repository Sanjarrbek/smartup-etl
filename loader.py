# import pandas as pd
# from sqlalchemy import create_engine

# from config import DB_URL


# def save_to_db(df: pd.DataFrame, table: str) -> None:
#     """
#     DataFrame ni PostgreSQL ga yuklaydi.
#     Jadval mavjud bo'lsa — o'chirib qaytadan yaratadi.

#     df    — yuklanadigan DataFrame
#     table — jadval nomi (masalan: "products")
#     """
#     if df.empty:
#         print(f"[SKIP] '{table}' bo'sh, o'tkazib yuborildi.")
#         return

#     engine = create_engine(DB_URL)
#     df.to_sql(table, engine, if_exists="replace", index=False)
#     print(f"[DB] '{table}' — {len(df)} ta qator yuklandi.")

import pandas as pd
from sqlalchemy import create_engine, text
from config import DB_URL


def save_to_db(df: pd.DataFrame, table: str) -> None:
    """
    Upsert: yangi ma'lumot qo'shadi, mavjudini yangilaydi, eskisini saqlab qoladi.
    """
    if df.empty:
        print(f"[SKIP] '{table}' bo'sh, o'tkazib yuborildi.")
        return

    engine = create_engine(DB_URL)

    # 1. Temp jadvalga yozamiz
    temp_table = f"_temp_{table}"
    df.to_sql(temp_table, engine, if_exists="replace", index=False)

    # 2. Ustun nomlarini olamiz
    columns = ", ".join([f'"{c}"' for c in df.columns])

    # 3. Upsert — temp dan asosiy jadvalga
    with engine.begin() as conn:
        # Asosiy jadval yo'q bo'lsa yaratamiz
        conn.execute(text(f"""
            CREATE TABLE IF NOT EXISTS "{table}" AS
            SELECT * FROM "{temp_table}" WHERE 1=0;
        """))

        # Upsert (INSERT ... ON CONFLICT DO NOTHING)
        conn.execute(text(f"""
            INSERT INTO "{table}" ({columns})
            SELECT {columns} FROM "{temp_table}"
            ON CONFLICT DO NOTHING;
        """))

        # Temp jadvalni o'chiramiz
        conn.execute(text(f'DROP TABLE IF EXISTS "{temp_table}";'))

    print(f"[DB] '{table}' — {len(df)} ta qator yuklandi.")
