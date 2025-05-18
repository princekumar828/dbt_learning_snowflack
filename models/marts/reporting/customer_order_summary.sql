SELECT 
    c.customer_id,
    COUNT(o.order_id) AS total_orders,
    SUM(CASE WHEN o.status = 'completed' THEN 1 ELSE 0 END) AS completed_orders,
    SUM(CASE WHEN o.status = 'shipped' THEN 1 ELSE 0 END) AS shipped_orders,
    MIN(o.order_date) AS first_order_date,
    MAX(o.order_date) AS last_order_date
FROM 
    {{ ref('stg_customers') }} AS c
LEFT JOIN 
    {{ ref('stg_orders') }} AS o ON c.customer_id = o.customer_id
GROUP BY 
    c.customer_id;