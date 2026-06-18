select
    purchase_order_id,
    vendor_id,
    employee_id,
    ship_method_id,
    order_date,
    ship_date,
    status,
    sub_total,
    tax_amt,
    freight,
    total_due,

    datediff(day, order_date, ship_date) as actual_lead_time_days,

    case 
        when status = 4 then 1 
        else 0 
    end as is_complete,

    case 
        when status = 3 then 1 
        else 0 
    end as is_rejected

from {{ ref('stg_purchase_order_headers') }}