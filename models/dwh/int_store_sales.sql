with sales as (

    select * from {{ ref('stg_store_sales') }}
)
,

dates as (
select * from {{ ref('stg_date_dim') }}

)

select   customer_key_sk 
, store_sk 
, quantity 
, sales_price 
, net_paid
, net_profit
, ext_tax 
, list_price 
, order_date_sk 
, dates.d_date as date_
, dates.d_year as year_

from sales sales 
left join dates dates 
on sales.order_date_sk = dates.d_date_sk 
where dates.d_year = 2000
and store_sk IN (166,163)








