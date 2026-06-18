select
    product_id,
    vendor_id,
    average_lead_time,
    standard_price,
    last_receipt_cost,
    last_receipt_date,
    min_order_qty,
    max_order_qty,
    on_order_qty,

    case 
        when standard_price > 0 then (last_receipt_cost - standard_price) / standard_price 
        else null 
    end as price_variance_pct

from {{ ref('stg_product_vendors') }}