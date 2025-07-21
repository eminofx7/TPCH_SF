with stores as (

    select * from {{ ref('int_stores') }}
)

select * from stores