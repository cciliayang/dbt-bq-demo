SELECT
o.Order_ID,
c.Customer_id,
c.Customer_name,
p.Product_ID,
p.Product_name,
o.Quantity,
o.Order_Date
FROM
    raw.orders o 
JOIN {{ref("stg_customers")}} c on o.Customer_ID = c.Customer_ID
JOIN
    raw.products p ON o.Product_ID = p.Product_ID       