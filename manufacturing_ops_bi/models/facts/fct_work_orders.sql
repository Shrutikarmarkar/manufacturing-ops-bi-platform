select
    work_order_id,
    product_id,
    scrap_reason_id,
    order_qty,
    stocked_qty,
    scrapped_qty,
    start_date,
    end_date,
    due_date,

    datediff(day, start_date, end_date) as cycle_time_days,

    case 
        when end_date <= due_date then 1 
        else 0 
    end as is_on_time,

    case 
        when order_qty > 0 then cast(scrapped_qty as float) / order_qty 
        else 0 
    end as scrap_rate

from {{ ref('stg_work_orders') }}