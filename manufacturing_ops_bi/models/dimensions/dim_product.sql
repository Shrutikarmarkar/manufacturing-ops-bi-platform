select
    product_id,
    product_name,
    product_number

from {{ ref('stg_products') }}