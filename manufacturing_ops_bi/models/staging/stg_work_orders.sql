with source as (
    select * from {{ source('production', 'WorkOrder') }}
)

select
    WorkOrderID as work_order_id,
    ProductID as product_id,
    OrderQty as order_qty,
    StockedQty as stocked_qty,
    ScrappedQty as scrapped_qty,
    StartDate as start_date,
    EndDate as end_date,
    DueDate as due_date,
    ScrapReasonID as scrap_reason_id,
    ModifiedDate as modified_date

from source