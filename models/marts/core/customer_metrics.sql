SELECT 
    COUNT(*) AS total_customers,
    COUNT(CASE WHEN last_order_date IS NOT NULL THEN 1 END) AS active_customers,
    COUNT(DISTINCT customer_id) AS unique_customers
FROM 
    {{ ref('stg_customers') }};