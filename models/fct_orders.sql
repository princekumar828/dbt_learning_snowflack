
with orders as (

    select * from {{ ref('stg_orders') }}

),

payments as (

    select * from {{ ref('stg_stripe_payments') }}

),

order_payments as (

    select
        order_id,
        sum(case when payment_status = 'success' then amount else 0 end) as total_amount_paid -- Sum successful payments for an order

    from payments
    group by 1

),

final as (

    select
        orders.order_id,
        orders.customer_id,
        orders.order_date,
        orders.status as order_status,
        coalesce(order_payments.total_amount_paid, 0) as total_amount_paid

    from orders

    left join order_payments using (order_id)

)

select * from final