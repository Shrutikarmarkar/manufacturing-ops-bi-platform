with source as (
    select * from {{ source('production', 'ScrapReason') }}
)

select
    ScrapReasonID as scrap_reason_id,
    Name as scrap_reason_name,
    ModifiedDate as modified_date

from source