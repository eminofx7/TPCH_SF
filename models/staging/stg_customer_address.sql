
with source as (
    
    select * from  {{ source('sources', 'customer_address') }}
)
,

transformed as ( 
    
select 
 
CA_ADDRESS_ID as customer_id -- TEXT
, CA_STATE as state -- TEXT
, CA_CITY as city -- TEXT
, CA_ADDRESS_SK as customer_address_sk -- NUMBER
, CA_ZIP as zip_code -- TEXT
, CA_COUNTRY as country -- TEXT
, CA_STREET_NUMBER as street_number -- TEXT
, CA_STREET_NAME as street_name -- TEXT
, CA_LOCATION_TYPE as house_type -- TEXT
, CA_STREET_TYPE as CA_STREET_TYPE -- TEXT
, CA_SUITE_NUMBER as CA_SUITE_NUMBER -- TEXT
, CA_COUNTY as CA_COUNTY -- TEXT
, CA_GMT_OFFSET as CA_GMT_OFFSET -- NUMBER

 from source
 )

select * from transformed