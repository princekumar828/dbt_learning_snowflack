SELECT
    COUNT(*) AS total_orders,
    AVG(order_value) AS average_order_value,
    SUM(CASE WHEN status = 'completed' THEN 1 ELSE 0 END) AS completed_orders,
    SUM(CASE WHEN status = 'returned' THEN 1 ELSE 0 END) AS returned_orders
FROM
    {{ ref('stg_orders') }};