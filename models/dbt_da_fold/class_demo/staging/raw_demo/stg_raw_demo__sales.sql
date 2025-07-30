with 

source as (

    select * from {{ source('raw_demo', 'sales') }}

),

renamed as (

    select
        date_date,
        product_id,
        quantity

    from source

)

select * from renamed
