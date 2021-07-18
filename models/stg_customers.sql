{{ config (
    materialized="table"
)}}


with customers as (
    
    select 
        id as customer_id,
        first_name,
        last_name

    from dbt-tutorial-320221.dbt_dsclater.customers
)

select * from customers
