with source as (

select *  from {{ source('sources', 'store') }}
)
,

transformed as (

select 
 S_STORE_ID as store_id -- TEXT
, S_MARKET_MANAGER as market_manager -- TEXT
, S_MARKET_ID as market_id -- NUMBER
, S_STATE as state -- TEXT
, S_COUNTRY as country -- TEXT
, S_ZIP as zip_code -- TEXT
, S_MANAGER as store_manager -- TEXT
CONCAT(S_STREET_NUMBER , S_STREET_NAME) as address ,
, S_STORE_NAME as store_name -- TEXT
, S_COMPANY_ID as company_id -- NUMBER
, S_NUMBER_EMPLOYEES as number_empoyees -- NUMBER
, S_TAX_PRECENTAGE as tax_pct -- NUMBER
, S_FLOOR_SPACE as S_FLOOR_SPACE -- NUMBER
, S_REC_START_DATE as S_REC_START_DATE -- DATE
, S_CLOSED_DATE_SK as S_CLOSED_DATE_SK -- NUMBER
, S_SUITE_NUMBER as S_SUITE_NUMBER -- TEXT
, S_DIVISION_NAME as S_DIVISION_NAME -- TEXT
, S_COUNTY as S_COUNTY -- TEXT
, S_DIVISION_ID as S_DIVISION_ID -- NUMBER
, S_MARKET_DESC as S_MARKET_DESC -- TEXT
, S_STREET_TYPE as S_STREET_TYPE -- TEXT
, S_COMPANY_NAME as S_COMPANY_NAME -- TEXT
, S_STREET_NAME as S_STREET_NAME -- TEXT
, S_STORE_SK as S_STORE_SK -- NUMBER
, S_GMT_OFFSET as S_GMT_OFFSET -- NUMBER
, S_GEOGRAPHY_CLASS as S_GEOGRAPHY_CLASS -- TEXT
, S_CITY as S_CITY -- TEXT
, S_HOURS as S_HOURS -- TEXT
, S_REC_END_DATE as S_REC_END_DATE -- DATE
, S_STREET_NUMBER as S_STREET_NUMBER -- TEXT

from source

)

select * from transformed

