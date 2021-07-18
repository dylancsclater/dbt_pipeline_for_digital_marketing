{{ config (
    materialized="table"
)}}


with orders as (
    
    select
        id as order_id,
        user_id as customer_id,
        order_date,
        status

    from dbt-tutorial-320221.dbt_dsclater.orders
)

select * from orders