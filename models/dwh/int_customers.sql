with customers as(

select * from {{ ref('stg_customers') }}

),

address as (

select * from {{ ref('stg_customer_address') }}

),

customer_address as (
select 

customers.customer_id,
customers.customer_key,
CONCAT(customers.first_name , ' ' , customers.last_name) as full_name,
customers.customer_email,
TO_DATE(CONCAT(customers.C_BIRTH_YEAR, '-', customers.C_BIRTH_MONTH, '-', customers.C_BIRTH_DAY))  AS birthday,
customers.birth_country,
address.state,
address.country,
address.zip_code,
address.city,
CONCAT(address.street_number, ' ', address.street_name) as customer_address

from customers customers 
left join address address
on customers.customer_id = address.customer_id
),

 unique_customers  as (
    select *,
        row_number() over (partition by customer_id order by customer_id asc) as row_num
    from customer_address
)


select * from unique_customers
where row_num = 1
