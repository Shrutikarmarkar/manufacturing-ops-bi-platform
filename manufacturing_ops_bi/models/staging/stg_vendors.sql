with source as (
    select * from {{ source('purchasing', 'Vendor') }}
)

select
    BusinessEntityID as vendor_id,
    AccountNumber as account_number,
    Name as vendor_name,
    CreditRating as credit_rating,
    PreferredVendorStatus as preferred_vendor_status,
    ActiveFlag as active_flag,
    ModifiedDate as modified_date

from source