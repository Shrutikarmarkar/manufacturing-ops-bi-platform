select
    p.product_id,
    p.product_name,
    p.product_number,
    coalesce(pc.category_name, 'Uncategorized') as category_name

from {{ ref('stg_products') }} p
left join {{ ref('stg_product_subcategories') }} psc
    on p.product_subcategory_id = psc.product_subcategory_id
left join {{ ref('stg_product_categories') }} pc
    on psc.product_category_id = pc.product_category_id