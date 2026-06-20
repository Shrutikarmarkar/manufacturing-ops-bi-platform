with source as (
    select * from {{ source('production', 'ProductSubcategory') }}
)

select
    ProductSubcategoryID as product_subcategory_id,
    ProductCategoryID as product_category_id,
    Name as subcategory_name,
    ModifiedDate as modified_date

from source