with source as (
    select * from {{ source('production', 'ProductCategory') }}
)

select
    ProductCategoryID as product_category_id,
    Name as category_name,
    ModifiedDate as modified_date

from source