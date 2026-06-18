with source as (
    select * from {{ source('purchasing', 'PurchaseOrderHeader') }}
)

select
    PurchaseOrderID as purchase_order_id,
    RevisionNumber as revision_number,
    Status as status,
    EmployeeID as employee_id,
    VendorID as vendor_id,
    ShipMethodID as ship_method_id,
    OrderDate as order_date,
    ShipDate as ship_date,
    SubTotal as sub_total,
    TaxAmt as tax_amt,
    Freight as freight,
    TotalDue as total_due,
    ModifiedDate as modified_date

from source