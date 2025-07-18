
with source as (

    select * from {{ source('sources', 'inventory') }}
)
,

transformed as 

(select 

 INV_QUANTITY_ON_HAND as INV_QUANTITY_ON_HAND -- NUMBER
, INV_WAREHOUSE_SK as INV_WAREHOUSE_SK -- NUMBER
, INV_ITEM_SK as INV_ITEM_SK -- NUMBER
, INV_DATE_SK as INV_DATE_SK -- NUMBER

 from source)

select * from transformed