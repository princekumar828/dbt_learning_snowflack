with source as (

    select * from {{ source('stripe', 'payment') }}

),

renamed as (

    select
        id as payment_id,
        orderid as order_id, -- Renaming to match orders.order_id
        paymentmethod as payment_method,
        status as payment_status,
        -- Amount is typically in cents, convert to dollars
        amount / 100 as amount,
        created as payment_created_date

    from source

)

select * from renamed