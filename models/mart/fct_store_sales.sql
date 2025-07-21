with sales as (

    select * from {{ ref('int_store_sales') }}
)


select 

store_sk,
sum(quantity) as quantity,
sum(net_paid) as net_paid,
Sum(net_profit) as net_profit,
year_

from sales
group by store_sk , year_
