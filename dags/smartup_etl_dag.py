from airflow import DAG
from airflow.operators.python import PythonOperator
from datetime import datetime, timedelta
import sys
sys.path.insert(0, '/opt/airflow')

from pipelines import (
    products, customers, orders,
    inventory_price, legal_entity, persons_group,
    returns, visits, writeoff, return_to_supplier,
    payment_from_client, cash_operations, bank_statements
)

default_args = {
    'owner': 'smartup-etl',
    'depends_on_past': False,
    'email_on_failure': False,
    'email_on_retry': False,
    'retries': 1,
    'retry_delay': timedelta(minutes=5),
}

with DAG(
    dag_id='smartup_etl',
    default_args=default_args,
    description='Smartup → PostgreSQL ETL Pipeline',
    schedule_interval='0 2 * * *',  # Har kuni 02:00 da
    start_date=datetime(2024, 1, 1),
    catchup=False,
    tags=['smartup', 'etl'],
) as dag:

    t_products = PythonOperator(
        task_id='products',
        python_callable=products.run,
    )

    t_customers = PythonOperator(
        task_id='customers',
        python_callable=customers.run,
    )

    t_orders = PythonOperator(
        task_id='orders',
        python_callable=orders.run,
    )

    t_inventory_price = PythonOperator(
        task_id='inventory_price',
        python_callable=inventory_price.run,
    )

    t_legal_entity = PythonOperator(
        task_id='legal_entity',
        python_callable=legal_entity.run,
    )

    t_persons_group = PythonOperator(
        task_id='persons_group',
        python_callable=persons_group.run,
    )

    t_returns = PythonOperator(
        task_id='returns',
        python_callable=returns.run,
    )

    t_visits = PythonOperator(
        task_id='visits',
        python_callable=visits.run,
    )

    t_writeoff = PythonOperator(
        task_id='writeoff',
        python_callable=writeoff.run,
    )

    t_return_to_supplier = PythonOperator(
        task_id='return_to_supplier',
        python_callable=return_to_supplier.run,
    )

    t_payment_from_client = PythonOperator(
        task_id='payment_from_client',
        python_callable=payment_from_client.run,
    )

    t_cash_operations = PythonOperator(
        task_id='cash_operations',
        python_callable=cash_operations.run,
    )

    t_bank_statements = PythonOperator(
        task_id='bank_statements',
        python_callable=bank_statements.run,
    )

    # Tartib: References → Sales → Warehouse → Finance
    [t_products, t_customers, t_legal_entity,
     t_persons_group, t_inventory_price] >> t_orders

    t_orders >> [t_returns, t_visits, t_writeoff,
                 t_return_to_supplier]

    [t_returns, t_visits] >> t_payment_from_client

    t_payment_from_client >> [t_cash_operations, t_bank_statements]