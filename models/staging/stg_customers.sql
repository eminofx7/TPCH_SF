with source as (

    select * from {{ source('sources', 'customer') }}
)
,

transformed as (

select 

C_BIRTH_COUNTRY as birth_country -- TEXT
, C_CUSTOMER_SK as customer_key -- NUMBER
, C_EMAIL_ADDRESS as customer_email -- TEXT
, C_FIRST_NAME as first_name -- TEXT
, C_LAST_NAME as last_name -- TEXT
, C_CUSTOMER_ID as customer_id -- TEXT
, C_PREFERRED_CUST_FLAG as C_PREFERRED_CUST_FLAG -- TEXT
, C_LAST_REVIEW_DATE as C_LAST_REVIEW_DATE -- TEXT
, C_BIRTH_DAY as C_BIRTH_DAY -- NUMBER
, C_LOGIN as C_LOGIN -- TEXT
, C_SALUTATION as C_SALUTATION -- TEXT
, C_CURRENT_HDEMO_SK as C_CURRENT_HDEMO_SK -- NUMBER
, C_CURRENT_ADDR_SK as C_CURRENT_ADDR_SK -- NUMBER
, C_BIRTH_YEAR as C_BIRTH_YEAR -- NUMBER
, C_FIRST_SHIPTO_DATE_SK as C_FIRST_SHIPTO_DATE_SK -- NUMBER
, C_BIRTH_MONTH as C_BIRTH_MONTH -- NUMBER
, C_FIRST_SALES_DATE_SK as C_FIRST_SALES_DATE_SK -- NUMBER
, C_CURRENT_CDEMO_SK as C_CURRENT_CDEMO_SK -- NUMBER

 from source 
 )

select * from transformed