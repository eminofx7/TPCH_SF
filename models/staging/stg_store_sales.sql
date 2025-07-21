
with source as (

select * from {{ source('sources', 'store_sales') }}

)
,

transformed as (

select 

 SS_CUSTOMER_SK as customer_key_sk -- NUMBER
, SS_STORE_SK as store_sk -- NUMBER
, SS_SOLD_TIME_SK as SS_SOLD_TIME_SK -- NUMBER
, SS_QUANTITY as quantity -- NUMBER
, SS_TICKET_NUMBER as ticket_number -- NUMBER
, SS_ITEM_SK as item_sk -- NUMBER
, SS_ADDR_SK as SS_ADDR_SK -- NUMBER
, SS_NET_PROFIT as net_profit -- NUMBER
, SS_EXT_TAX as ext_tax -- NUMBER
, SS_LIST_PRICE as list_price -- NUMBER
, SS_NET_PAID as net_paid -- NUMBER
, SS_SALES_PRICE as sales_price -- NUMBER
, SS_SOLD_DATE_SK as order_date_sk -- NUMBER
, SS_PROMO_SK as SS_PROMO_SK -- NUMBER
, SS_EXT_DISCOUNT_AMT as SS_EXT_DISCOUNT_AMT -- NUMBER
, SS_CDEMO_SK as SS_CDEMO_SK -- NUMBER
, SS_COUPON_AMT as SS_COUPON_AMT -- NUMBER
, SS_NET_PAID_INC_TAX as SS_NET_PAID_INC_TAX -- NUMBER
, SS_EXT_WHOLESALE_COST as SS_EXT_WHOLESALE_COST -- NUMBER
, SS_HDEMO_SK as SS_HDEMO_SK -- NUMBER
, SS_EXT_LIST_PRICE as SS_EXT_LIST_PRICE -- NUMBER
, SS_WHOLESALE_COST as cost -- NUMBER
, SS_EXT_SALES_PRICE as SS_EXT_SALES_PRICE -- NUMBER

from source
)

select * from transformed


