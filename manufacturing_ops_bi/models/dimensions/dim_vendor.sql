select
    vendor_id,
    account_number,
    vendor_name,
    credit_rating,
    preferred_vendor_status,
    active_flag

from {{ ref('stg_vendors') }}