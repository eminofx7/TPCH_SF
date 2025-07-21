

with source as (select * from {{ source('sources', 'date_dim') }})
,

transformed as (select * from source)

select * from transformed
