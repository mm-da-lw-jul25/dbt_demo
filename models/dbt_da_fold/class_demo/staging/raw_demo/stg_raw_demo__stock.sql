with 

source as (

    select * from {{ source('raw_demo', 'stock') }}

),

renamed as (

    select
        model,
        model_name,
        color,
        price

    from source

)

select * from renamed
