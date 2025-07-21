with sales as (

select * from {{ ref('stg_web_sales') }}

)

select 

customer_key_sk 
, list_price 
, website_sk 
, quantity 
, net_paid 
, net_profit 
, sales_price 
, cost 

from sales