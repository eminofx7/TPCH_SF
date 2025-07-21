with stores as (
    select *,
        row_number() over (partition by store_id order by store_id asc) as row_num
    from {{ ref('stg_store') }}
)

select 
    store_id,
    market_manager,
    market_id,
    state,
    country,
    zip_code,
    store_manager,
    CONCAT(S_STREET_NUMBER, S_STREET_NAME) as address,
    store_name,
    company_id,
    number_empoyees,
    tax_pct
from stores
where row_num = 1
