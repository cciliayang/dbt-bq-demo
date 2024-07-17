With stg_customers AS (
    select
    Customer_id,
    CONCAT(first_name, ' ', last_name) as customer_name,
    email as email_address,
    address as billing_address
    FROM raw.customer
)

select * from stg_customers