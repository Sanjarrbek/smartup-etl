import os
from config import OUTPUT_DIR
from pipelines import products, customers, orders, inventory_price, legal_entity, persons_group, returns, visits, writeoff, return_to_supplier, payment_from_client, cash_operations, bank_statements

os.makedirs(OUTPUT_DIR, exist_ok=True)

# Yangi pipeline qo'shish uchun:
#   1. pipelines/ papkasida yangi fayl yarating / 
#           Terminal orqali yangi papka yaratish uchun "New-Item pipelines/customers.py" ko'rinishida yoziladi 
#           va enter qilinsa qo'shiladi.
#   2. Shu yerga import qilib, run() ni chaqiring / 
#           Yangi fayl yaratilganda oldin yaratilgan fayllarni run qilishni kommentga olib qo'ysa bo'ladi,
#           barcha fayllar yaratilib bo'lgandan so'ng kommentni olib tashlab 
#           keyin hammasini bittada run qilsa ham bo'ladi.

products.run()
customers.run()
orders.run()
inventory_price.run()
legal_entity.run()
persons_group.run()
returns.run()
visits.run()
writeoff.run()
return_to_supplier.run()
payment_from_client.run()
cash_operations.run()
bank_statements.run()