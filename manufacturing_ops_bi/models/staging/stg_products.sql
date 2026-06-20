with source as (
    select * from {{ source('production', 'Product') }}
)

select
    ProductID as product_id,
    Name as product_name,
    ProductNumber as product_number,
    ProductSubcategoryID as product_subcategory_id,
    ModifiedDate as modified_date

from source