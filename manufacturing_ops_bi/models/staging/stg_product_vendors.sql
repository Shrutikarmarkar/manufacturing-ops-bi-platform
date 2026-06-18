with source as (
    select * from {{ source('purchasing', 'ProductVendor') }}
)

select
    ProductID as product_id,
    BusinessEntityID as vendor_id,
    AverageLeadTime as average_lead_time,
    StandardPrice as standard_price,
    LastReceiptCost as last_receipt_cost,
    LastReceiptDate as last_receipt_date,
    MinOrderQty as min_order_qty,
    MaxOrderQty as max_order_qty,
    OnOrderQty as on_order_qty,
    ModifiedDate as modified_date

from source