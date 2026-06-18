with source as (
    select * from {{ source('production', 'Product') }}
)

select
    ProductID as product_id,
    Name as product_name,
    ProductNumber as product_number,
    ModifiedDate as modified_date

from source