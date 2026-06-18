select
    scrap_reason_id,
    scrap_reason_name

from {{ ref('stg_scrap_reasons') }}