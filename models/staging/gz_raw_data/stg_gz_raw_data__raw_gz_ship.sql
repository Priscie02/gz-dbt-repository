with 

source as (

    select * from {{ source('gz_raw_data', 'raw_gz_ship') }}

),

renamed as (

    select
        orders_id,
        shipping_fee,
        CAST(ship_cost AS FLOAT64),
        logcost,
        

    from source

)

select * from renamed
